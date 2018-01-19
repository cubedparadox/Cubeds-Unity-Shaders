// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33699,y:33850,varname:node_3138,prsc:2|emission-3804-RGB,clip-5553-OUT,voffset-7717-OUT;n:type:ShaderForge.SFN_MultiplyMatrix,id:2560,x:32900,y:34196,varname:node_2560,prsc:2|A-7627-OUT,B-368-OUT;n:type:ShaderForge.SFN_Append,id:7627,x:32638,y:34067,varname:node_7627,prsc:2|A-3205-OUT,B-4060-OUT;n:type:ShaderForge.SFN_Vector1,id:4060,x:32435,y:34144,varname:node_4060,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:9685,x:33089,y:34196,varname:node_9685,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2560-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2602,x:32239,y:33866,varname:node_2602,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2611,x:33265,y:34196,varname:node_2611,prsc:2|A-9685-OUT,B-2602-XYZ;n:type:ShaderForge.SFN_Code,id:368,x:32412,y:34244,varname:node_368,prsc:2,code:ZgBsAG8AYQB0ADQAeAA0ACAAdABNAGEAdAByAGkAeAAgAD0AIAB7AGMAbwBzACgAeAApACwAMAAsAHMAaQBuACgAeAApACwAMAAsAAoACQAgACAAIAAgADAALAAxACwAMAAsADAALAAKAAkAIAAgACAAIAAtAHMAaQBuACgAeAApACwAMAAsAGMAbwBzACgAeAApACwAMAAsAAoACQAgACAAIAAgADAAIAAgACwAMAAgACAALAAwACAAIAAsADEAfQA7AAoAcgBlAHQAdQByAG4AIAB0AE0AYQB0AHIAaQB4ADsA,output:13,fname:ds,width:325,height:151,input:0,input_1_label:x|A-5000-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:8119,x:32239,y:34065,varname:node_8119,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3205,x:32435,y:33995,varname:node_3205,prsc:2|A-2602-XYZ,B-8119-XYZ;n:type:ShaderForge.SFN_Add,id:7717,x:33432,y:34196,varname:node_7717,prsc:2|A-2611-OUT,B-183-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:183,x:33265,y:34329,varname:node_183,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:3937,x:31316,y:34313,varname:node_3937,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:1125,x:31486,y:34313,varname:node_1125,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-3937-OUT;n:type:ShaderForge.SFN_Normalize,id:3582,x:31666,y:34313,varname:node_3582,prsc:2|IN-1125-OUT;n:type:ShaderForge.SFN_ArcTan2,id:5035,x:32020,y:34313,varname:node_5035,prsc:2,attp:0|A-6260-R,B-6260-G;n:type:ShaderForge.SFN_ComponentMask,id:6260,x:31842,y:34313,varname:node_6260,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3582-OUT;n:type:ShaderForge.SFN_Negate,id:5000,x:32199,y:34313,varname:node_5000,prsc:2|IN-5035-OUT;n:type:ShaderForge.SFN_Tex2d,id:3804,x:33065,y:33843,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3804,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:5050,x:33025,y:34078,ptovrint:False,ptlb:Alpha Clip,ptin:_AlphaClip,varname:node_5050,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_Subtract,id:5553,x:33338,y:33981,varname:node_5553,prsc:2|A-3804-A,B-5050-OUT;proporder:3804-5050;pass:END;sub:END;*/

Shader "CubedParadox/VR Vertical Billboard" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _AlphaClip ("Alpha Clip", Range(0, 0.5)) = 0
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            float4x4 ds( float x ){
            float4x4 tMatrix = {cos(x),0,sin(x),0,
            	    0,1,0,0,
            	    -sin(x),0,cos(x),0,
            	    0  ,0  ,0  ,1};
            return tMatrix;
            }
            
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _AlphaClip;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
                float3 node_3205 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb);
                float2 node_6260 = normalize(viewDirection.rb).rg;
                float4 node_2560 = mul(float4(node_3205,0.0),ds( (-1*atan2(node_6260.r,node_6260.g)) ));
                float3 node_9685 = node_2560.rgb;
                v.vertex.xyz += ((node_9685-mul(unity_ObjectToWorld, v.vertex).rgb)+objPos.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a-_AlphaClip) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _MainTex_var.rgb;
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
            float4x4 ds( float x ){
            float4x4 tMatrix = {cos(x),0,sin(x),0,
            	    0,1,0,0,
            	    -sin(x),0,cos(x),0,
            	    0  ,0  ,0  ,1};
            return tMatrix;
            }
            
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _AlphaClip;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
                float3 node_3205 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb);
                float2 node_6260 = normalize(viewDirection.rb).rg;
                float4 node_2560 = mul(float4(node_3205,0.0),ds( (-1*atan2(node_6260.r,node_6260.g)) ));
                float3 node_9685 = node_2560.rgb;
                v.vertex.xyz += ((node_9685-mul(unity_ObjectToWorld, v.vertex).rgb)+objPos.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a-_AlphaClip) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
