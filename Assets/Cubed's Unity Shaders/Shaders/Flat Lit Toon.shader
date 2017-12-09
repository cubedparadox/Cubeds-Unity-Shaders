Shader "CubedParadox/Flat Lit Toon"
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		_ColorMask("ColorMask", 2D) = "black" {}
		_Shadow("Shadow", Range(0, 1)) = 0.4
		_outline_width("outline_width", Float) = 0.2
		_outline_color("outline_color", Color) = (0.5,0.5,0.5,1)
		_outline_tint("outline_tint", Range(0, 1)) = 0.5
		_EmissionMap("Emission Map", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,1)
		_BumpMap("BumpMap", 2D) = "bump" {}
		[HideInInspector]_Cutoff("Alpha cutoff", Range(0,1)) = 0.5
	}

		CGINCLUDE

	#pragma vertex vert
	#pragma fragment frag
	#pragma geometry geom
	#include "UnityCG.cginc"
	#include "AutoLight.cginc"
	#include "Lighting.cginc"

	#pragma multi_compile_fog
	#pragma only_renderers d3d9 d3d11 glcore gles 
	#pragma target 4.0
	#pragma shader_feature NO_OUTLINE TINTED_OUTLINE COLORED_OUTLINE

	uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
	uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
	uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
	uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;

	uniform float4 _Color;
	uniform float _Shadow;
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

	ENDCG

	SubShader
	{
		Tags
		{
		"Queue" = "AlphaTest"
		"RenderType" = "TransparentCutout"
		}

		Pass
		{

			Name "FORWARD"
			Tags { "LightMode" = "ForwardBase" }

			CGPROGRAM
			#pragma multi_compile_fwdbase_fullshadows

			float4 frag(VertexOutput i) : COLOR
			{
				float4 objPos = mul(unity_ObjectToWorld, float4(0,0,0,1));
				i.normalDir = normalize(i.normalDir);
				float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);
				float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
				float3 normalDirection = normalize(mul(_BumpMap_var.rgb, tangentTransform)); // Perturbed normals
				float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
				clip(_MainTex_var.a - 0.5);
				float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
				float3 lightColor = _LightColor0.rgb;
				UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);

				float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
				float3 emissive = (_EmissionMap_var.rgb*_EmissionColor.rgb);
				float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
				float3 baseColor = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
				baseColor *= i.col;
				#if COLORED_OUTLINE
				if(i.col.a > .5) { baseColor = i.col; }
				#endif

				float3 reflectionMap = DecodeHDR(UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, normalize((_WorldSpaceCameraPos - objPos.rgb)), 7), unity_SpecCube0_HDR)* 0.02;

				float grayscalelightcolor = dot(_LightColor0.rgb, grayscale_vector);
				float bottomIndirectLighting = grayscaleSH9(float3(0.0, -1.0, 0.0));
				float topIndirectLighting = grayscaleSH9(float3(0.0, 1.0, 0.0));
				float grayscaleDirectLighting = dot(lightDirection, normalDirection)*grayscalelightcolor*attenuation + grayscaleSH9(normalDirection);

				float lightDifference = topIndirectLighting + grayscalelightcolor - bottomIndirectLighting;
				float remappedLight = (grayscaleDirectLighting - bottomIndirectLighting) / lightDifference;

				float3 indirectLighting = saturate((ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)) + reflectionMap));
				float3 directLighting = saturate((ShadeSH9(half4(0.0, 1.0, 0.0, 1.0)) + reflectionMap + _LightColor0.rgb));
				float3 directContribution = saturate((1.0 - _Shadow) + floor(saturate(remappedLight) * 2.0));
				float3 finalColor = emissive + (baseColor * lerp(indirectLighting, directLighting, directContribution));
				fixed4 finalRGBA = fixed4(finalColor, 1);
				UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
				return finalRGBA;
			}
			ENDCG
		}

		Pass
		{
			Name "FORWARD_DELTA"
			Tags { "LightMode" = "ForwardAdd" }
			Blend One One

			CGPROGRAM
			#pragma multi_compile_fwdadd_fullshadows

			float4 frag(VertexOutput i) : COLOR
			{
				float4 objPos = mul(unity_ObjectToWorld, float4(0,0,0,1));
				i.normalDir = normalize(i.normalDir);
				float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);
				float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
				float3 normalDirection = normalize(mul(_BumpMap_var.rgb, tangentTransform)); // Perturbed normals
				float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
				clip(_MainTex_var.a - 0.5);
				float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
				float3 lightColor = _LightColor0.rgb;
				UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
	
				float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
				float3 baseColor = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
				float lightContribution = dot(normalize(_WorldSpaceLightPos0.xyz - i.posWorld.xyz),normalDirection)*attenuation;
				float3 directContribution = floor(saturate(lightContribution) * 2.0);
				float3 finalColor = baseColor * lerp(0, _LightColor0.rgb, saturate(directContribution + ((1 - _Shadow) * attenuation)));
				fixed4 finalRGBA = fixed4(finalColor,1) * i.col;
				UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
				return finalRGBA;
			}
			ENDCG
		}
	}
	FallBack "Diffuse"
	CustomEditor "FlatLitToonInspector"
}