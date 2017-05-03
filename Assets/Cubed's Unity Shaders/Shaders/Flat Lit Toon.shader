// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:35955,y:32575,varname:node_9361,prsc:2|normal-5914-RGB,emission-1050-OUT,custl-7956-OUT,clip-851-A,olwid-7841-OUT,olcol-3232-OUT;n:type:ShaderForge.SFN_LightColor,id:3406,x:33621,y:32845,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:851,x:33733,y:32088,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5927,x:33733,y:32279,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:544,x:33903,y:32279,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Code,id:4082,x:33398,y:32674,varname:node_4082,prsc:2,code:ZgBsAG8AYQB0ADQAIAB2AGEAbAAgAD0AIABVAE4ASQBUAFkAXwBTAEEATQBQAEwARQBfAFQARQBYAEMAVQBCAEUAXwBMAE8ARAAoAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwACwAIAByAGUAZgBsAFYAZQBjAHQALAAgADcAKQA7AAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAEMAbwBsACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAdgBhAGwALAAgAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwAF8ASABEAFIAKQA7AAoAcgBlAHQAdQByAG4AIAByAGUAZgBsAEMAbwBsACAAKgAgADAALgAwADIAOwA=,output:2,fname:CubemapReflections,width:515,height:130,input:2,input_1_label:reflVect|A-7331-OUT;n:type:ShaderForge.SFN_Code,id:3693,x:33621,y:32526,varname:node_3693,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:292,height:112,input:2,input_1_label:normal|A-9945-OUT;n:type:ShaderForge.SFN_Multiply,id:5720,x:34546,y:32626,varname:node_5720,prsc:2|A-5427-OUT,B-4653-OUT;n:type:ShaderForge.SFN_Clamp01,id:4653,x:34318,y:32626,varname:node_4653,prsc:2|IN-6707-OUT;n:type:ShaderForge.SFN_ViewPosition,id:102,x:32825,y:32593,varname:node_102,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1025,x:33026,y:32674,varname:node_1025,prsc:2|A-102-XYZ,B-996-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:996,x:32825,y:32736,varname:node_996,prsc:2;n:type:ShaderForge.SFN_Add,id:6707,x:34121,y:32626,varname:node_6707,prsc:2|A-3693-OUT,B-4082-OUT,C-3825-OUT;n:type:ShaderForge.SFN_Normalize,id:7331,x:33197,y:32674,varname:node_7331,prsc:2|IN-1025-OUT;n:type:ShaderForge.SFN_Vector3,id:9945,x:33409,y:32525,varname:node_9945,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Lerp,id:5427,x:34132,y:32279,varname:node_5427,prsc:2|A-544-OUT,B-851-RGB,T-7279-R;n:type:ShaderForge.SFN_Tex2d,id:7279,x:33903,y:32088,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:node_7279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Code,id:6629,x:33083,y:33522,varname:node_6629,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_36932,width:292,height:112,input:2,input_1_label:normal|A-9998-OUT;n:type:ShaderForge.SFN_NormalVector,id:9998,x:32896,y:33521,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4029,x:33515,y:33580,varname:node_4029,prsc:2,dt:0|A-6629-OUT,B-1053-OUT;n:type:ShaderForge.SFN_Code,id:2779,x:33083,y:33758,varname:node_2779,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:aaa,width:292,height:112,input:2,input_1_label:normal|A-6287-OUT;n:type:ShaderForge.SFN_Vector3,id:6287,x:32885,y:33756,varname:node_6287,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Vector3,id:1053,x:33261,y:33646,varname:node_1053,prsc:2,v1:0,v2:0.3823529,v3:0.01845836;n:type:ShaderForge.SFN_Dot,id:638,x:33515,y:33736,varname:node_638,prsc:2,dt:0|A-1053-OUT,B-2779-OUT;n:type:ShaderForge.SFN_Code,id:7048,x:33083,y:33936,varname:node_7048,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:bbb,width:292,height:112,input:2,input_1_label:normal|A-5330-OUT;n:type:ShaderForge.SFN_Vector3,id:5330,x:32885,y:33933,varname:node_5330,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Dot,id:7209,x:33515,y:33910,varname:node_7209,prsc:2,dt:0|A-1053-OUT,B-7048-OUT;n:type:ShaderForge.SFN_Vector1,id:9834,x:33652,y:33954,varname:node_9834,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4769,x:33652,y:34007,varname:node_4769,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:7956,x:35034,y:32653,varname:node_7956,prsc:2|A-9611-OUT,B-5720-OUT,T-954-OUT;n:type:ShaderForge.SFN_Vector3,id:2794,x:33437,y:33256,varname:node_2794,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Code,id:2434,x:33649,y:33257,varname:node_2434,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_369,width:292,height:112,input:2,input_1_label:normal|A-2794-OUT;n:type:ShaderForge.SFN_Add,id:6064,x:34157,y:33211,varname:node_6064,prsc:2|A-2434-OUT,B-4082-OUT;n:type:ShaderForge.SFN_Clamp01,id:928,x:34337,y:33211,varname:node_928,prsc:2|IN-6064-OUT;n:type:ShaderForge.SFN_Multiply,id:9611,x:34529,y:33211,varname:node_9611,prsc:2|A-5427-OUT,B-928-OUT;n:type:ShaderForge.SFN_Slider,id:2436,x:32919,y:33210,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_2436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_OneMinus,id:2323,x:33264,y:33138,varname:node_2323,prsc:2|IN-2436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7841,x:35206,y:32772,ptovrint:False,ptlb:outline_width,ptin:_outline_width,varname:node_7841,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.002;n:type:ShaderForge.SFN_Multiply,id:3232,x:35206,y:32834,varname:node_3232,prsc:2|A-7956-OUT,B-5693-OUT;n:type:ShaderForge.SFN_Slider,id:3471,x:34667,y:32846,ptovrint:False,ptlb:outline_tint,ptin:_outline_tint,varname:node_3471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_OneMinus,id:5693,x:35014,y:32834,varname:node_5693,prsc:2|IN-3471-OUT;n:type:ShaderForge.SFN_Tex2d,id:6857,x:34987,y:32282,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_6857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5772,x:34988,y:32464,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_5772,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:1050,x:35169,y:32293,varname:node_1050,prsc:2|A-6857-RGB,B-5772-RGB;n:type:ShaderForge.SFN_Posterize,id:5312,x:34439,y:33885,varname:node_5312,prsc:2|IN-6325-OUT,STPS-3365-OUT;n:type:ShaderForge.SFN_Vector1,id:3365,x:34254,y:34033,varname:node_3365,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:2491,x:34630,y:33885,varname:node_2491,prsc:2|A-2323-OUT,B-5312-OUT;n:type:ShaderForge.SFN_Clamp01,id:954,x:34809,y:33885,varname:node_954,prsc:2|IN-2491-OUT;n:type:ShaderForge.SFN_LightColor,id:1880,x:33116,y:34491,varname:node_1880,prsc:2;n:type:ShaderForge.SFN_Vector3,id:7291,x:33116,y:34637,varname:node_7291,prsc:2,v1:0,v2:0.3823529,v3:0.01845836;n:type:ShaderForge.SFN_Dot,id:1382,x:33316,y:34491,varname:node_1382,prsc:2,dt:0|A-1880-RGB,B-7291-OUT;n:type:ShaderForge.SFN_Tex2d,id:5914,x:35732,y:32469,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_5914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_LightVector,id:5436,x:33116,y:34139,varname:node_5436,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:390,x:33116,y:34308,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:2944,x:33316,y:34139,varname:node_2944,prsc:2,dt:0|A-5436-OUT,B-390-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1450,x:34079,y:33885,varname:node_1450,prsc:2|IN-760-OUT,IMIN-638-OUT,IMAX-8527-OUT,OMIN-9834-OUT,OMAX-4769-OUT;n:type:ShaderForge.SFN_Clamp01,id:6325,x:34254,y:33885,varname:node_6325,prsc:2|IN-1450-OUT;n:type:ShaderForge.SFN_Multiply,id:5940,x:33515,y:34139,varname:node_5940,prsc:2|A-2944-OUT,B-1382-OUT,C-2627-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2627,x:33316,y:34308,varname:node_2627,prsc:2;n:type:ShaderForge.SFN_Add,id:760,x:33839,y:34053,varname:node_760,prsc:2|A-4029-OUT,B-5940-OUT;n:type:ShaderForge.SFN_Add,id:8527,x:33839,y:34243,varname:node_8527,prsc:2|A-7209-OUT,B-1382-OUT;n:type:ShaderForge.SFN_Multiply,id:3825,x:33814,y:32845,varname:node_3825,prsc:2|A-3406-RGB,B-8185-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:98,x:33076,y:33000,varname:node_98,prsc:2;n:type:ShaderForge.SFN_Posterize,id:1809,x:33264,y:33000,varname:node_1809,prsc:2|IN-98-OUT,STPS-9412-OUT;n:type:ShaderForge.SFN_Vector1,id:9412,x:33076,y:33123,varname:node_9412,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:4223,x:33450,y:33000,varname:node_4223,prsc:2|A-1809-OUT,B-2323-OUT;n:type:ShaderForge.SFN_Clamp01,id:8185,x:33621,y:33000,varname:node_8185,prsc:2|IN-4223-OUT;proporder:851-5927-7279-2436-7841-3471-6857-5772-5914;pass:END;sub:END;*/

Shader "CubedParadox/Flat Lit Toon" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _Shadow ("Shadow", Range(0, 1)) = 0.4
        _outline_width ("outline_width", Float ) = 0.002
        _outline_tint ("outline_tint", Range(0, 1)) = 0.5
        _EmissionMap ("Emission Map", 2D) = "white" {}
        _EmissionColor ("Emission Color", Color) = (0,0,0,1)
        _BumpMap ("BumpMap", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }

        CGPROGRAM
            #pragma surface surf Lambert addshadow
            #pragma shader_feature DONT_OUTLINE
            uniform sampler2D _MainTex;
            struct Input {
                float4 color : COLOR;
                float2 uv_MainTex;
            };

            void surf(Input IN, inout SurfaceOutput o) {
            	float4 _MainTex_var = tex2D(_MainTex,IN.uv_MainTex);
                o.Albedo = 1;
                clip(_MainTex_var.a - 0.5);
            }
        ENDCG

        Pass {
            Name "Outline"
            Tags {
            	"LightMode"="ForwardBase"
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma shader_feature DONT_OUTLINE
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
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float4 _EmissionColor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                //LIGHTING_COORDS(5,6)
                SHADOW_COORDS(5)
                UNITY_FOG_COORDS(3)
            };

            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_outline_width,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
            	#if DONT_OUTLINE
                clip(-1);
                #endif
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
                float3 emissive = (_EmissionMap_var.rgb*_EmissionColor.rgb);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_1382 = dot(_LightColor0.rgb,float3(0,0.3823529,0.01845836));
                float node_5940 = (dot(lightDirection,normalDirection)*node_1382*attenuation);
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_1450 = (node_9834 + ( ((dot(Function_node_36932( normalDirection ),node_1053)+node_5940) - node_638) * (1.0 - node_9834) ) / ((dot(node_1053,bbb( float3(0,1,0) ))+node_1382) - node_638));
                float node_3365 = 2.0;
                float node_5312 = floor(saturate(node_1450) * node_3365) / (node_3365 - 1);
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(_LightColor0.rgb*attenuation)))),saturate(((1.0 - _Shadow)+node_5312)));
                float3 finalColor = emissive + node_7956*(1.0 - _outline_tint);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
           //     float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
           //     i.normalDir = normalize(i.normalDir);
           //     float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
           //     float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
           //     float3 normalLocal = _BumpMap_var.rgb;
           //     float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
           //     float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
           //     clip(_MainTex_var.a - 0.5);
           //     float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
           //     //float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
           //     float3 lightColor = _LightColor0.rgb;
           //     float attenuation = LIGHT_ATTENUATION(i);
           //     float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
           //     float3 emissive = (_EmissionMap_var.rgb*_EmissionColor.rgb);
           //     float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
           //     float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
           //     float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
           //     float node_9412 = 2.0;
           //     float node_1809 = floor(attenuation * node_9412) / (node_9412 - 1);
           //     float node_2323 = (1.0 - _Shadow);
           //     float3 node_1053 = float3(0,0.3823529,0.01845836);
           //     float node_1382 = dot(_LightColor0.rgb,float3(0,0.3823529,0.01845836));
           //     float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
           //     float node_9834 = 0.0;
           //     float node_3365 = 2.0;
           //     float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(_LightColor0.rgb*saturate((node_1809+node_2323)))))),saturate((node_2323+floor(saturate((node_9834 + ( ((dot(Function_node_36932( normalDirection ),node_1053)+(dot(lightDirection,normalDirection)*node_1382*attenuation)) - node_638) * (1.0 - node_9834) ) / ((dot(node_1053,bbb( float3(0,1,0) ))+node_1382) - node_638))) * node_3365) / (node_3365 - 1))));
           //     return fixed4((node_7956*(1.0 - _outline_tint)),0);
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
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float4 _EmissionColor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
                float3 emissive = (_EmissionMap_var.rgb*_EmissionColor.rgb);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float node_9412 = 2.0;
                float node_1809 = floor(attenuation * node_9412) / (node_9412 - 1);
                float node_2323 = (1.0 - _Shadow);
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_1382 = dot(_LightColor0.rgb,float3(0,0.3823529,0.01845836));
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_3365 = 2.0;
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(_LightColor0.rgb*saturate((node_1809+node_2323)))))),saturate((node_2323+floor(saturate((node_9834 + ( ((dot(Function_node_36932( normalDirection ),node_1053)+(dot(lightDirection,normalDirection)*node_1382*attenuation)) - node_638) * (1.0 - node_9834) ) / ((dot(node_1053,bbb( float3(0,1,0) ))+node_1382) - node_638))) * node_3365) / (node_3365 - 1))));
                float3 finalColor = emissive + node_7956;
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
            BlendOp Max
            
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
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float4 _EmissionColor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 node_5427 = lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r);
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float node_9412 = 2.0;
                float node_1809 = floor(attenuation * node_9412) / (node_9412 - 1);
                float node_2323 = (1.0 - _Shadow);
                float3 node_1053 = float3(0,0.3823529,0.01845836);
                float node_1382 = dot(_LightColor0.rgb,float3(0,0.3823529,0.01845836));
                float node_638 = dot(node_1053,aaa( float3(0,-1,0) ));
                float node_9834 = 0.0;
                float node_3365 = 2.0;
                float3 node_7956 = lerp((node_5427*saturate((Function_node_369( float3(0,-1,0) )+node_4082))),(node_5427*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(_LightColor0.rgb*saturate((node_1809+node_2323)))))),saturate((node_2323+floor(saturate((node_9834 + ( ((dot(Function_node_36932( normalDirection ),node_1053)+(dot(lightDirection,normalDirection)*node_1382*attenuation)) - node_638) * (1.0 - node_9834) ) / ((dot(node_1053,bbb( float3(0,1,0) ))+node_1382) - node_638))) * node_3365) / (node_3365 - 1))));
                float3 finalColor = node_7956;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "FlatLitToonInspector"
}
