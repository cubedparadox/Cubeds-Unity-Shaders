#ifndef FLAT_LIT_TOON_CORE_LITE_INCLUDED

#include "UnityCG.cginc"
#include "AutoLight.cginc"
#include "Lighting.cginc"

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
	float2 uv1 : TEXCOORD1;
	float4 posWorld : TEXCOORD2;
	float3 normalDir : TEXCOORD3;
	float3 tangentDir : TEXCOORD4;
	float3 bitangentDir : TEXCOORD5;
	float4 col : COLOR;
	SHADOW_COORDS(6)
	UNITY_FOG_COORDS(7)
};

VertexOutput vert(appdata_full v) {
	VertexOutput o;
    UNITY_INITIALIZE_OUTPUT(VertexOutput, o);
	o.uv0 = v.texcoord;
	o.uv1 = v.texcoord1;
	o.normalDir = normalize(UnityObjectToWorldNormal(v.normal));
	o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
	o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
	float4 objPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1));
	o.posWorld = mul(unity_ObjectToWorld, v.vertex);
	float3 lightColor = _LightColor0.rgb;
	o.col = fixed4(1., 1., 1., 0.);
	o.pos = UnityObjectToClipPos(v.vertex);
	TRANSFER_SHADOW(o);
	UNITY_TRANSFER_FOG(o, o.pos);
	return o;
}
float grayscaleSH9(float3 normalDirection)
{
	return dot(ShadeSH9(half4(normalDirection, 1.0)), grayscale_vector);
}

#endif