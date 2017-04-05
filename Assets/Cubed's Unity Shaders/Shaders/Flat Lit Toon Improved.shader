// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:35417,y:32480,varname:node_9361,prsc:2|custl-7956-OUT,olwid-7841-OUT,olcol-3232-OUT;n:type:ShaderForge.SFN_LightColor,id:3406,x:33718,y:32826,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:851,x:33733,y:32088,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5927,x:33733,y:32279,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:544,x:33903,y:32279,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Code,id:4082,x:33398,y:32674,varname:node_4082,prsc:2,code:ZgBsAG8AYQB0ADQAIAB2AGEAbAAgAD0AIABVAE4ASQBUAFkAXwBTAEEATQBQAEwARQBfAFQARQBYAEMAVQBCAEUAXwBMAE8ARAAoAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwACwAIAByAGUAZgBsAFYAZQBjAHQALAAgADcAKQA7AAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAEMAbwBsACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAdgBhAGwALAAgAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwAF8ASABEAFIAKQA7AAoAcgBlAHQAdQByAG4AIAByAGUAZgBsAEMAbwBsACAAKgAgADAALgAwADIAOwA=,output:2,fname:CubemapReflections,width:515,height:130,input:2,input_1_label:reflVect|A-7331-OUT;n:type:ShaderForge.SFN_Code,id:3693,x:33621,y:32526,varname:node_3693,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:292,height:112,input:2,input_1_label:normal|A-9945-OUT;n:type:ShaderForge.SFN_Multiply,id:9937,x:33901,y:32901,varname:node_9937,prsc:2|A-3406-RGB,B-5621-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:5621,x:33718,y:32968,varname:node_5621,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5720,x:34546,y:32626,varname:node_5720,prsc:2|A-5427-OUT,B-4653-OUT;n:type:ShaderForge.SFN_Clamp01,id:4653,x:34318,y:32626,varname:node_4653,prsc:2|IN-6707-OUT;n:type:ShaderForge.SFN_ViewPosition,id:102,x:32825,y:32593,varname:node_102,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1025,x:33026,y:32674,varname:node_1025,prsc:2|A-102-XYZ,B-996-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:996,x:32825,y:32736,varname:node_996,prsc:2;n:type:ShaderForge.SFN_Add,id:6707,x:34121,y:32626,varname:node_6707,prsc:2|A-3693-OUT,B-4082-OUT,C-9937-OUT;n:type:ShaderForge.SFN_Normalize,id:7331,x:33197,y:32674,varname:node_7331,prsc:2|IN-1025-OUT;n:type:ShaderForge.SFN_Vector3,id:9945,x:33409,y:32525,varname:node_9945,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Lerp,id:5427,x:34132,y:32279,varname:node_5427,prsc:2|A-544-OUT,B-851-RGB,T-7279-R;n:type:ShaderForge.SFN_Tex2d,id:7279,x:33903,y:32088,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:node_7279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Code,id:6629,x:33083,y:33522,varname:node_6629,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_36932,width:292,height:112,input:2,input_1_label:normal|A-9998-OUT;n:type:ShaderForge.SFN_NormalVector,id:9998,x:32896,y:33521,prsc:2,pt:False;n:type:ShaderForge.SFN_Posterize,id:2148,x:34031,y:33772,varname:node_2148,prsc:2|IN-1498-OUT,STPS-8216-OUT;n:type:ShaderForge.SFN_Vector1,id:8216,x:33828,y:33923,varname:node_8216,prsc:2,v1:2;n:type:ShaderForge.SFN_Dot,id:4029,x:33515,y:33580,varname:node_4029,prsc:2,dt:0|A-6629-OUT,B-1053-OUT;n:type:ShaderForge.SFN_Code,id:2779,x:33083,y:33758,varname:node_2779,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:aaa,width:292,height:112,input:2,input_1_label:normal|A-6287-OUT;n:type:ShaderForge.SFN_Vector3,id:6287,x:32885,y:33756,varname:node_6287,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Vector3,id:1053,x:33261,y:33646,varname:node_1053,prsc:2,v1:0,v2:0.3823529,v3:0.01845836;n:type:ShaderForge.SFN_Dot,id:638,x:33515,y:33736,varname:node_638,prsc:2,dt:0|A-1053-OUT,B-2779-OUT;n:type:ShaderForge.SFN_Code,id:7048,x:33083,y:33936,varname:node_7048,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:bbb,width:292,height:112,input:2,input_1_label:normal|A-5330-OUT;n:type:ShaderForge.SFN_Vector3,id:5330,x:32885,y:33933,varname:node_5330,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Dot,id:7209,x:33515,y:33910,varname:node_7209,prsc:2,dt:0|A-1053-OUT,B-7048-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1498,x:33828,y:33772,varname:node_1498,prsc:2|IN-4029-OUT,IMIN-638-OUT,IMAX-7209-OUT,OMIN-9834-OUT,OMAX-4769-OUT;n:type:ShaderForge.SFN_Vector1,id:9834,x:33652,y:33954,varname:node_9834,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4769,x:33652,y:34007,varname:node_4769,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:7956,x:35047,y:32722,varname:node_7956,prsc:2|A-9611-OUT,B-5720-OUT,T-4647-OUT;n:type:ShaderForge.SFN_Clamp01,id:4647,x:34553,y:33772,varname:node_4647,prsc:2|IN-8630-OUT;n:type:ShaderForge.SFN_Vector3,id:2794,x:33437,y:33256,varname:node_2794,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Code,id:2434,x:33649,y:33257,varname:node_2434,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_369,width:292,height:112,input:2,input_1_label:normal|A-2794-OUT;n:type:ShaderForge.SFN_Add,id:6064,x:34157,y:33211,varname:node_6064,prsc:2|A-2434-OUT,B-4082-OUT,C-9937-OUT;n:type:ShaderForge.SFN_Clamp01,id:928,x:34337,y:33211,varname:node_928,prsc:2|IN-6064-OUT;n:type:ShaderForge.SFN_Multiply,id:9611,x:34529,y:33211,varname:node_9611,prsc:2|A-5427-OUT,B-928-OUT;n:type:ShaderForge.SFN_Add,id:8630,x:34385,y:33772,varname:node_8630,prsc:2|A-2323-OUT,B-8097-OUT;n:type:ShaderForge.SFN_Slider,id:2436,x:33845,y:33562,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_2436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:2323,x:34188,y:33549,varname:node_2323,prsc:2|IN-2436-OUT;n:type:ShaderForge.SFN_Clamp01,id:8097,x:34214,y:33772,varname:node_8097,prsc:2|IN-2148-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7841,x:35047,y:33097,ptovrint:False,ptlb:outline_width,ptin:_outline_width,varname:node_7841,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.003;n:type:ShaderForge.SFN_Multiply,id:3232,x:35206,y:32834,varname:node_3232,prsc:2|A-7956-OUT,B-5693-OUT;n:type:ShaderForge.SFN_Slider,id:3471,x:34562,y:32866,ptovrint:False,ptlb:outline_tint,ptin:_outline_tint,varname:node_3471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:5693,x:34903,y:32845,varname:node_5693,prsc:2|IN-3471-OUT;proporder:851-5927-7279-2436-7841-3471;pass:END;sub:END;*/

Shader "CubedParadox/Flat Lit Toon Improved" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _Shadow ("Shadow", Range(0, 1)) = 0.25
        _outline_width ("outline_width", Float ) = 0.003
        _outline_tint ("outline_tint", Range(0, 1)) = 0.6
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }

		CGPROGRAM
		#pragma surface surf Lambert addshadow
			struct Input {
			float4 color : COLOR;
		};
		void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = 1;
		}
		ENDCG

        Pass {
            Name "Outline"
			Tags{
			"LightMode" = "ForwardBase"
			}
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
			#include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            float3 CubemapReflections( float3 reflVect ){
            float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflVect, 7);
            float3 reflCol = DecodeHDR(val, unity_SpecCube0_HDR);
            return reflCol * 0.02;
            }
            
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            float3 Function_node_36932( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 aaa( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 bbb( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 Function_node_369( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float _Shadow;
            uniform float _outline_width;
            uniform float _outline_tint;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_outline_width,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightColor = _LightColor0.rgb;
				float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 node_9937 = (_LightColor0.rgb*attenuation);
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_8216 = 2.0;
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082+node_9937))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+node_9937))),saturate(((1.0 - _Shadow)+saturate(floor((node_9834 + ( (dot(Function_node_36932( i.normalDir ),node_1053) - node_638) * (1.0 - node_9834) ) / (dot(node_1053,bbb( float3(0,1,0) )) - node_638)) * node_8216) / (node_8216 - 1)))));
                return fixed4((node_7956*(1.0 - _outline_tint)),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            float3 CubemapReflections( float3 reflVect ){
            float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflVect, 7);
            float3 reflCol = DecodeHDR(val, unity_SpecCube0_HDR);
            return reflCol * 0.02;
            }
            
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            float3 Function_node_36932( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 aaa( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 bbb( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 Function_node_369( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float _Shadow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 node_9937 = (_LightColor0.rgb*attenuation);
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_8216 = 2.0;
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082+node_9937))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+node_9937))),saturate(((1.0 - _Shadow)+saturate(floor((node_9834 + ( (dot(Function_node_36932( i.normalDir ),node_1053) - node_638) * (1.0 - node_9834) ) / (dot(node_1053,bbb( float3(0,1,0) )) - node_638)) * node_8216) / (node_8216 - 1)))));
                float3 finalColor = node_7956;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            float3 CubemapReflections( float3 reflVect ){
            float4 val = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflVect, 7);
            float3 reflCol = DecodeHDR(val, unity_SpecCube0_HDR);
            return reflCol * 0.02;
            }
            
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            float3 Function_node_36932( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 aaa( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 bbb( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            float3 Function_node_369( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float _Shadow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 node_9937 = (_LightColor0.rgb*attenuation);
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_8216 = 2.0;
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082+node_9937))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+node_9937))),saturate(((1.0 - _Shadow)+saturate(floor((node_9834 + ( (dot(Function_node_36932( i.normalDir ),node_1053) - node_638) * (1.0 - node_9834) ) / (dot(node_1053,bbb( float3(0,1,0) )) - node_638)) * node_8216) / (node_8216 - 1)))));
                float3 finalColor = node_7956;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
