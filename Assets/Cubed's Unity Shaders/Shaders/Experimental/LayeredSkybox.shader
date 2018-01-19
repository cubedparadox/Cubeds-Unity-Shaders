// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1293252,fgcg:0.1345394,fgcb:0.1691176,fgca:1,fgde:0.02,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:3554,x:33196,y:32918,varname:node_3554,prsc:2|emission-9970-OUT;n:type:ShaderForge.SFN_ViewVector,id:690,x:31781,y:32977,varname:node_690,prsc:2;n:type:ShaderForge.SFN_Dot,id:1669,x:31968,y:33025,varname:node_1669,prsc:2,dt:0|A-690-OUT,B-2112-OUT;n:type:ShaderForge.SFN_Vector3,id:2112,x:31781,y:33105,varname:node_2112,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Negate,id:492,x:32135,y:33025,varname:node_492,prsc:2|IN-1669-OUT;n:type:ShaderForge.SFN_Lerp,id:9970,x:32815,y:33025,varname:node_9970,prsc:2|A-2674-RGB,B-3577-OUT,T-393-OUT;n:type:ShaderForge.SFN_Color,id:2674,x:32611,y:32863,ptovrint:False,ptlb:fog,ptin:_fog,varname:node_2674,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Cubemap,id:3412,x:32287,y:33251,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_Clamp01,id:9218,x:32287,y:33025,varname:node_9218,prsc:2|IN-492-OUT;n:type:ShaderForge.SFN_Multiply,id:3577,x:32611,y:33205,varname:node_3577,prsc:2|A-3412-RGB,B-3412-RGB,C-6933-RGB;n:type:ShaderForge.SFN_Tex2d,id:6933,x:32287,y:33452,ptovrint:False,ptlb:Noise Texture,ptin:_NoiseTexture,varname:node_6933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-820-UVOUT;n:type:ShaderForge.SFN_ViewVector,id:5975,x:31766,y:33452,varname:node_5975,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2361,x:31946,y:33452,varname:node_2361,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-5975-OUT;n:type:ShaderForge.SFN_Time,id:2414,x:31766,y:33623,varname:node_2414,prsc:2;n:type:ShaderForge.SFN_Panner,id:820,x:32117,y:33452,varname:node_820,prsc:2,spu:1,spv:1|UVIN-2361-OUT,DIST-445-OUT;n:type:ShaderForge.SFN_Multiply,id:445,x:31946,y:33623,varname:node_445,prsc:2|A-2414-TSL,B-9289-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9289,x:31766,y:33785,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_9289,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Clamp01,id:393,x:32611,y:33025,varname:node_393,prsc:2|IN-9909-OUT;n:type:ShaderForge.SFN_Multiply,id:9909,x:32452,y:33025,varname:node_9909,prsc:2|A-9218-OUT,B-252-OUT;n:type:ShaderForge.SFN_Vector1,id:252,x:32287,y:33162,varname:node_252,prsc:2,v1:2;proporder:2674-3412-6933-9289;pass:END;sub:END;*/

Shader "CubedParadox/Layered Skybox" {
    Properties {
        _fog ("fog", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", Cube) = "_Skybox" {}
        _NoiseTexture ("Noise Texture", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
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
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _fog;
            uniform samplerCUBE _MainTex;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = texCUBE(_MainTex,viewReflectDirection);
                float4 node_2414 = _Time;
                float2 node_820 = (viewDirection.rb+(node_2414.r*_Speed)*float2(1,1));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(node_820, _NoiseTexture));
                float3 emissive = lerp(_fog.rgb,(_MainTex_var.rgb*_MainTex_var.rgb*_NoiseTexture_var.rgb),saturate((saturate((-1*dot(viewDirection,float3(0,1,0))))*2.0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
