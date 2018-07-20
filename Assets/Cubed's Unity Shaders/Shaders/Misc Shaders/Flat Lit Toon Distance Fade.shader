// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:34890,y:32520,varname:node_9361,prsc:2|custl-5720-OUT,clip-3507-OUT;n:type:ShaderForge.SFN_Tex2d,id:851,x:33995,y:32176,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5927,x:33995,y:32382,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:544,x:34455,y:32305,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Code,id:4082,x:33398,y:32674,varname:node_4082,prsc:2,code:ZgBsAG8AYQB0ADQAIAB2AGEAbAAgAD0AIABVAE4ASQBUAFkAXwBTAEEATQBQAEwARQBfAFQARQBYAEMAVQBCAEUAXwBMAE8ARAAoAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwACwAIAByAGUAZgBsAFYAZQBjAHQALAAgADcAKQA7AAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAEMAbwBsACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAdgBhAGwALAAgAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwAF8ASABEAFIAKQA7AAoAcgBlAHQAdQByAG4AIAByAGUAZgBsAEMAbwBsACAAKgAgADAALgAwADIAOwA=,output:2,fname:CubemapReflections,width:515,height:130,input:2,input_1_label:reflVect|A-7331-OUT;n:type:ShaderForge.SFN_Code,id:3693,x:33621,y:32526,varname:node_3693,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:292,height:112,input:2,input_1_label:normal|A-9945-OUT;n:type:ShaderForge.SFN_Multiply,id:5720,x:34648,y:32606,varname:node_5720,prsc:2|A-5427-OUT,B-4653-OUT;n:type:ShaderForge.SFN_Clamp01,id:4653,x:34318,y:32626,varname:node_4653,prsc:2|IN-6707-OUT;n:type:ShaderForge.SFN_ViewPosition,id:102,x:32825,y:32593,varname:node_102,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1025,x:33026,y:32674,varname:node_1025,prsc:2|A-102-XYZ,B-996-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:996,x:32825,y:32736,varname:node_996,prsc:2;n:type:ShaderForge.SFN_Add,id:6707,x:34121,y:32626,varname:node_6707,prsc:2|A-3693-OUT,B-4082-OUT;n:type:ShaderForge.SFN_Normalize,id:7331,x:33197,y:32674,varname:node_7331,prsc:2|IN-1025-OUT;n:type:ShaderForge.SFN_Vector3,id:9945,x:33409,y:32525,varname:node_9945,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Lerp,id:5427,x:34757,y:32245,varname:node_5427,prsc:2|A-544-OUT,B-851-RGB,T-7279-R;n:type:ShaderForge.SFN_Tex2d,id:7279,x:34190,y:32459,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:node_7279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Noise,id:8453,x:34121,y:33131,varname:node_8453,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4164,x:34318,y:33061,varname:node_4164,prsc:2|A-5485-OUT,B-8453-OUT,T-1014-OUT;n:type:ShaderForge.SFN_Vector1,id:5485,x:34121,y:33061,varname:node_5485,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1014,x:33964,y:33296,ptovrint:False,ptlb:Dither Amount,ptin:_DitherAmount,varname:node_1014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.28,max:1;n:type:ShaderForge.SFN_Distance,id:6911,x:34318,y:32924,varname:node_6911,prsc:2|A-2191-XYZ,B-9858-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2191,x:34121,y:32786,varname:node_2191,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:9858,x:34121,y:32924,varname:node_9858,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3363,x:34492,y:32924,varname:node_3363,prsc:2|A-6911-OUT,B-4164-OUT;n:type:ShaderForge.SFN_OneMinus,id:3507,x:34673,y:32924,varname:node_3507,prsc:2|IN-3363-OUT;proporder:851-5927-7279-1014;pass:END;sub:END;*/

Shader "CubedParadox/Flat Lit Toon Distance Fade" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _DitherAmount ("Dither Amount", Range(0, 1)) = 0.28
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float _DitherAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 node_8453_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8453_rnd = 4.789*sin(489.123*(node_8453_skew));
                float node_8453 = frac(node_8453_rnd.x*node_8453_rnd.y*(1+node_8453_skew.x));
                clip((1.0 - (distance(i.posWorld.rgb,_WorldSpaceCameraPos)*lerp(1.0,node_8453,_DitherAmount))) - 0.5);
////// Lighting:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 finalColor = (lerp((_MainTex_var.rgb*_Color.rgb),_MainTex_var.rgb,_ColorMask_var.r)*saturate((Function_node_3693( float3(0,1,0) )+CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) ))));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _DitherAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_8453_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8453_rnd = 4.789*sin(489.123*(node_8453_skew));
                float node_8453 = frac(node_8453_rnd.x*node_8453_rnd.y*(1+node_8453_skew.x));
                clip((1.0 - (distance(i.posWorld.rgb,_WorldSpaceCameraPos)*lerp(1.0,node_8453,_DitherAmount))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
