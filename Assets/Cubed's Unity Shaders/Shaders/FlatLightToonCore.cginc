#include "UnityCG.cginc"
#include "AutoLight.cginc"
#include "Lighting.cginc"

#pragma multi_compile_fog
#pragma only_renderers d3d9 d3d11 glcore gles 
#pragma target 4.0
//#pragma addshadow

uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;

uniform float4 _Color;
uniform float _Shadow;
uniform float _Cutoff;
uniform float4 _EmissionColor;

static const float3 grayscale_vector = float3(0, 0.3823529, 0.01845836);

struct VertexOutput
{
	float4 pos : SV_POSITION;
	float2 uv0 : TEXCOORD0;
	float4 posWorld : TEXCOORD1;
	float3 normalDir : TEXCOORD2;
	float3 tangentDir : TEXCOORD3;
	float3 bitangentDir : TEXCOORD4;
	fixed4 col : COLOR;
	SHADOW_COORDS(5)
	UNITY_FOG_COORDS(6)
};

struct v2g
{
	float4 vertex : POSITION;
	float3 normal : NORMAL;
	float4 tangent : TANGENT;
	float2 uv0 : TEXCOORD0;
	float4 posWorld : TEXCOORD1;
	float3 normalDir : TEXCOORD2;
	float3 tangentDir : TEXCOORD3;
	float3 bitangentDir : TEXCOORD4;
	float4 pos : CLIP_POS;
	SHADOW_COORDS(5)
	UNITY_FOG_COORDS(6)
};

v2g vert(appdata_tan v) {
	v2g o;
	o.uv0 = v.texcoord;
	o.normal = v.normal;
	o.tangent = v.tangent;
	o.normalDir = UnityObjectToWorldNormal(v.normal);
	o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
	o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
	float4 objPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1));
	o.posWorld = mul(unity_ObjectToWorld, v.vertex);
	float3 lightColor = _LightColor0.rgb;
	o.vertex = v.vertex;
	o.pos = UnityObjectToClipPos(v.vertex);
	TRANSFER_SHADOW(o);
	UNITY_TRANSFER_FOG(o, o.pos);
	return o;
}

float _outline_width;
float4 _outline_color;

[maxvertexcount(6)]
void geom(triangle v2g IN[3], inout TriangleStream<VertexOutput> tristream)
{
	VertexOutput o;
	#if !NO_OUTLINE
	for (int i = 2; i >= 0; i--)
	{
		o.pos = UnityObjectToClipPos(IN[i].vertex + IN[i].normal * (_outline_width * .01));
		o.uv0 = IN[i].uv0;
		o.col = fixed4( _outline_color.r, _outline_color.g, _outline_color.b, 1);
		o.posWorld = mul(unity_ObjectToWorld, IN[i].vertex);
		o.normalDir = UnityObjectToWorldNormal(IN[i].normal);
		o.tangentDir = IN[i].tangentDir;
		o.bitangentDir = IN[i].bitangentDir;
		o.posWorld = mul(unity_ObjectToWorld, IN[i].vertex);

		// Pass-through the shadow coordinates if this pass has shadows.
		#if defined (SHADOWS_SCREEN) || ( defined (SHADOWS_DEPTH) && defined (SPOT) ) || defined (SHADOWS_CUBE)
		o._ShadowCoord = IN[i]._ShadowCoord;
		#endif

		// Pass-through the fog coordinates if this pass has shadows.
		#if defined(FOG_LINEAR) || defined(FOG_EXP) || defined(FOG_EXP2)
		o.fogCoord = IN[i].fogCoord;
		#endif

		tristream.Append(o);
	}

	tristream.RestartStrip();
	#endif

	for (int ii = 0; ii < 3; ii++)
	{
		o.pos = UnityObjectToClipPos(IN[ii].vertex);
		o.uv0 = IN[ii].uv0;
		o.col = fixed4(1., 1., 1., 0.);
		o.posWorld = mul(unity_ObjectToWorld, IN[ii].vertex);
		o.normalDir = UnityObjectToWorldNormal(IN[ii].normal);
		o.tangentDir = IN[ii].tangentDir;
		o.bitangentDir = IN[ii].bitangentDir;
		o.posWorld = mul(unity_ObjectToWorld, IN[ii].vertex);

		// Pass-through the shadow coordinates if this pass has shadows.
		#if defined (SHADOWS_SCREEN) || ( defined (SHADOWS_DEPTH) && defined (SPOT) ) || defined (SHADOWS_CUBE)
		o._ShadowCoord = IN[ii]._ShadowCoord;
		#endif

		// Pass-through the fog coordinates if this pass has shadows.
		#if defined(FOG_LINEAR) || defined(FOG_EXP) || defined(FOG_EXP2)
		o.fogCoord = IN[ii].fogCoord;
		#endif

		tristream.Append(o);
	}

	tristream.RestartStrip();
}

float grayscaleSH9(float3 normalDirection)
{
	return dot(ShadeSH9(half4(normalDirection, 1.0)), grayscale_vector);
}