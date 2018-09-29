// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:3554,x:32728,y:32938,varname:node_3554,prsc:2|emission-9834-OUT;n:type:ShaderForge.SFN_Color,id:8306,x:32089,y:32870,ptovrint:False,ptlb:Sky Color,ptin:_SkyColor,varname:node_8306,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.197,c2:0.197,c3:0.197,c4:1;n:type:ShaderForge.SFN_ViewVector,id:2265,x:31370,y:33241,varname:node_2265,prsc:2;n:type:ShaderForge.SFN_Dot,id:7606,x:31541,y:33241,varname:node_7606,prsc:2,dt:1|A-2265-OUT,B-3211-OUT;n:type:ShaderForge.SFN_Vector3,id:3211,x:31370,y:33381,varname:node_3211,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Color,id:3839,x:32089,y:33053,ptovrint:False,ptlb:Horizon Color,ptin:_HorizonColor,varname:_GroundColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4980392,c2:0.4980392,c3:0.4980392,c4:1;n:type:ShaderForge.SFN_Power,id:4050,x:31889,y:33241,varname:node_4050,prsc:2|VAL-6125-OUT,EXP-7609-OUT;n:type:ShaderForge.SFN_Vector1,id:7609,x:31710,y:33389,varname:node_7609,prsc:2,v1:8;n:type:ShaderForge.SFN_OneMinus,id:6125,x:31710,y:33241,varname:node_6125,prsc:2|IN-7606-OUT;n:type:ShaderForge.SFN_Lerp,id:2737,x:32295,y:33053,cmnt:Sky,varname:node_2737,prsc:2|A-8306-RGB,B-3839-RGB,T-4050-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8097,x:31127,y:33014,varname:node_8097,prsc:2,sctp:2;n:type:ShaderForge.SFN_Code,id:2675,x:31451,y:32603,varname:node_2675,prsc:2,code:ZgBsAG8AYQB0ADMAIABwADMAIAA9ACAAZgByAGEAYwAoAGYAbABvAGEAdAAzACgAcAAuAHgAeQB4ACkAIAAqACAAKABmAGwAbwBhAHQAMwAoADQANAAzAC4AOAA5ADcANQAsADMAOQA3AC4AMgA5ADcAMwAsACAANAA5ADEALgAxADgANwAxACkAIAArACAAXwBUAGkAbQBlAC4AeQApACkAOwANAAoAcAAzACAAKwA9ACAAZABvAHQAKABwADMALAAgAHAAMwAuAHkAeAB6ACAAKwAgADEAOQAuADEAOQApADsADQAKAHIAZQB0AHUAcgBuACAAKABmAHIAYQBjACgAZgBsAG8AYQB0ADMAKAAoAHAAMwAuAHgAIAArACAAcAAzAC4AeQApACoAcAAzAC4AegAsACAAKABwADMALgB4ACAAKwAgAHAAMwAuAHoAKQAqAHAAMwAuAHkALAAgACgAcAAzAC4AeQAgACsAIABwADMALgB6ACkAKgBwADMALgB4ACkAKQAgAC0AIAAwAC4ANQApACAAKgAgADIAIAAqACAAMAAuADAAMAAwADcANQA7AA==,output:2,fname:dither,width:1001,height:132,input:1,input_1_label:p|A-8097-UVOUT;n:type:ShaderForge.SFN_Add,id:9834,x:32500,y:32998,varname:node_9834,prsc:2|A-2675-OUT,B-2737-OUT;proporder:8306-3839;pass:END;sub:END;*/

Shader "CubedParadox/Simple Gradient Sky" {
    Properties {
        _SkyColor ("Sky Color", Color) = (0.197,0.197,0.197,1)
        _HorizonColor ("Horizon Color", Color) = (0.4980392,0.4980392,0.4980392,1)
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _SkyColor;
            uniform float4 _HorizonColor;
            float3 dither( float2 p ){
            float3 p3 = frac(float3(p.xyx) * (float3(443.8975,397.2973, 491.1871) + _Time.y));
            p3 += dot(p3, p3.yxz + 19.19);
            return (frac(float3((p3.x + p3.y)*p3.z, (p3.x + p3.z)*p3.y, (p3.y + p3.z)*p3.x)) - 0.5) * 2 * 0.00075;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float3 emissive = (dither( sceneUVs.rg )+lerp(_SkyColor.rgb,_HorizonColor.rgb,pow((1.0 - max(0,dot(viewDirection,float3(0,-1,0)))),8.0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
