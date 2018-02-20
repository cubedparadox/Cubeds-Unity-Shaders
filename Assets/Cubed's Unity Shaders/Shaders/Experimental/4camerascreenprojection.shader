// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33208,y:32762,varname:node_3138,prsc:2|emission-7877-OUT;n:type:ShaderForge.SFN_ScreenPos,id:5792,x:31665,y:32794,varname:node_5792,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:1678,x:32248,y:32821,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1678,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5544-OUT;n:type:ShaderForge.SFN_Tex2d,id:1783,x:32248,y:33006,ptovrint:False,ptlb:MainTex1,ptin:_MainTex1,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5544-OUT;n:type:ShaderForge.SFN_Tex2d,id:5679,x:32248,y:33198,ptovrint:False,ptlb:MainTex2,ptin:_MainTex2,varname:_MainTex_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5544-OUT;n:type:ShaderForge.SFN_Tex2d,id:5764,x:32248,y:33400,ptovrint:False,ptlb:MainTex3,ptin:_MainTex3,varname:_MainTex_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5544-OUT;n:type:ShaderForge.SFN_RemapRange,id:5544,x:31846,y:32794,varname:node_5544,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5792-UVOUT;n:type:ShaderForge.SFN_Lerp,id:2012,x:32570,y:32914,varname:node_2012,prsc:2|A-1678-RGB,B-1783-RGB,T-418-R;n:type:ShaderForge.SFN_Lerp,id:9779,x:32557,y:33255,varname:node_9779,prsc:2|A-5679-RGB,B-5764-RGB,T-418-R;n:type:ShaderForge.SFN_Lerp,id:7877,x:32953,y:33019,varname:node_7877,prsc:2|A-2012-OUT,B-9779-OUT,T-418-G;n:type:ShaderForge.SFN_ComponentMask,id:418,x:32523,y:32631,varname:node_418,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6299-OUT;n:type:ShaderForge.SFN_Ceil,id:2839,x:32168,y:32631,varname:node_2839,prsc:2|IN-5544-OUT;n:type:ShaderForge.SFN_Clamp01,id:6299,x:32344,y:32631,varname:node_6299,prsc:2|IN-2839-OUT;proporder:1678-1783-5679-5764;pass:END;sub:END;*/

Shader "CubedParadox/4camerascreenprojection" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainTex1 ("MainTex1", 2D) = "white" {}
        _MainTex2 ("MainTex2", 2D) = "white" {}
        _MainTex3 ("MainTex3", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MainTex1; uniform float4 _MainTex1_ST;
            uniform sampler2D _MainTex2; uniform float4 _MainTex2_ST;
            uniform sampler2D _MainTex3; uniform float4 _MainTex3_ST;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float2 node_5544 = (sceneUVs.rg*2.0+-1.0);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5544, _MainTex));
                float4 _MainTex1_var = tex2D(_MainTex1,TRANSFORM_TEX(node_5544, _MainTex1));
                float2 node_418 = saturate(ceil(node_5544)).rg;
                float4 _MainTex2_var = tex2D(_MainTex2,TRANSFORM_TEX(node_5544, _MainTex2));
                float4 _MainTex3_var = tex2D(_MainTex3,TRANSFORM_TEX(node_5544, _MainTex3));
                float3 emissive = lerp(lerp(_MainTex_var.rgb,_MainTex1_var.rgb,node_418.r),lerp(_MainTex2_var.rgb,_MainTex3_var.rgb,node_418.r),node_418.g);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
