// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1293252,fgcg:0.1345394,fgcb:0.1691176,fgca:1,fgde:0.02,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32793,y:32453,varname:node_3138,prsc:2|emission-6902-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32286,y:32733,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_SceneColor,id:3475,x:32275,y:32578,varname:node_3475,prsc:2|UVIN-8306-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1158,x:31497,y:32695,varname:node_1158,prsc:2,sctp:2;n:type:ShaderForge.SFN_Code,id:9325,x:31662,y:32705,varname:node_9325,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwAgAD0AIAB1AHYAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIwBpAGYAIABVAE4ASQBUAFkAXwBTAEkATgBHAEwARQBfAFAAQQBTAFMAXwBTAFQARQBSAEUATwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdQB2AHMAIAA9ACAAKAB1AHYALgB4AHkAIAArACAAZgBsAG8AYQB0ADIAIAAoAHUAbgBpAHQAeQBfAFMAdABlAHIAZQBvAEUAeQBlAEkAbgBkAGUAeAAsADAAKQApACAAKgAgAGYAbABvAGEAdAAyACAAKAAuADUAZgAsADEAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAjAGUAbgBkAGkAZgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHIAZQB0AHUAcgBuACAAdQB2AHMAOwA=,output:1,fname:get_stereo_uvs,width:247,height:112,input:1,input_1_label:uv|A-1158-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6902,x:32508,y:32578,varname:node_6902,prsc:2|A-3475-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Tex2d,id:3423,x:31305,y:32533,ptovrint:False,ptlb:normals,ptin:_normals,varname:node_3423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False|UVIN-4236-UVOUT;n:type:ShaderForge.SFN_Append,id:7590,x:31478,y:32521,varname:node_7590,prsc:2|A-3423-R,B-3423-G;n:type:ShaderForge.SFN_Add,id:8306,x:32100,y:32578,varname:node_8306,prsc:2|A-2-OUT,B-9325-OUT;n:type:ShaderForge.SFN_Slider,id:3165,x:31505,y:32423,ptovrint:False,ptlb:distortion,ptin:_distortion,varname:node_3165,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:2,x:31864,y:32504,varname:node_2,prsc:2|A-3165-OUT,B-7088-OUT;n:type:ShaderForge.SFN_RemapRange,id:7088,x:31662,y:32504,varname:node_7088,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7590-OUT;n:type:ShaderForge.SFN_Time,id:5329,x:30763,y:32499,varname:node_5329,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:9514,x:30937,y:32499,varname:node_9514,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4236,x:31123,y:32533,varname:node_4236,prsc:2,spu:1,spv:1|UVIN-9514-UVOUT,DIST-4047-OUT;n:type:ShaderForge.SFN_Multiply,id:4047,x:30948,y:32654,varname:node_4047,prsc:2|A-5329-TSL,B-9883-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9883,x:30763,y:32726,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_9883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:5401,x:33441,y:31479,varname:node_5401,prsc:2,code:ZgBsAG8AYQB0ADQAIAB2AGEAbAAgAD0AIABVAE4ASQBUAFkAXwBTAEEATQBQAEwARQBfAFQARQBYAEMAVQBCAEUAXwBMAE8ARAAoAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwACwAIAByAGUAZgBsAFYAZQBjAHQALAAgAEcAbABvAHMAcwAqADcAKQA7AAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAEMAbwBsACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAdgBhAGwALAAgAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwAF8ASABEAFIAKQA7AAoAcgBlAHQAdQByAG4AIAByAGUAZgBsAEMAbwBsADsA,output:2,fname:Function_node_6099,width:717,height:329,input:2,input:0,input_1_label:reflVect,input_2_label:Gloss;proporder:7241-3423-3165-9883;pass:END;sub:END;*/

Shader "CubedParadox/VRRefraction" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _normals ("normals", 2D) = "bump" {}
        _distortion ("distortion", Range(0, 1)) = 0.5
        _speed ("speed", Float ) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            float2 get_stereo_uvs( float2 uv ){
            float2 uvs = uv;
                        #if UNITY_SINGLE_PASS_STEREO
                        uvs = (uv.xy + float2 (unity_StereoEyeIndex,0)) * float2 (.5f,1);
                        #endif
                        
                        return uvs;
            }
            
            uniform sampler2D _normals; uniform float4 _normals_ST;
            uniform float _distortion;
            uniform float _speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 node_5329 = _Time + _TimeEditor;
                float2 node_4236 = (i.uv0+(node_5329.r*_speed)*float2(1,1));
                float4 _normals_var = tex2D(_normals,TRANSFORM_TEX(node_4236, _normals));
                float3 node_6902 = (tex2D( _GrabTexture, ((_distortion*(float2(_normals_var.r,_normals_var.g)*2.0+-1.0))+get_stereo_uvs( sceneUVs.rg ))).rgb*_Color.rgb);
                float3 emissive = node_6902;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
