// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33748,y:33316,varname:node_3138,prsc:2|emission-3838-OUT;n:type:ShaderForge.SFN_Append,id:6895,x:32154,y:33767,varname:node_6895,prsc:2|A-5903-OUT,B-1672-OUT;n:type:ShaderForge.SFN_Dot,id:1542,x:31885,y:33784,varname:node_1542,prsc:2,dt:0|A-9591-OUT,B-5345-OUT;n:type:ShaderForge.SFN_Normalize,id:5345,x:31591,y:33707,varname:node_5345,prsc:2|IN-6871-XYZ;n:type:ShaderForge.SFN_Dot,id:5903,x:31885,y:33599,varname:node_5903,prsc:2,dt:0|A-5727-OUT,B-5345-OUT;n:type:ShaderForge.SFN_Multiply,id:5795,x:32328,y:33767,varname:node_5795,prsc:2|A-6895-OUT,B-4963-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4963,x:32154,y:33928,ptovrint:False,ptlb:Flow Power,ptin:_FlowPower,varname:node_4963,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Time,id:8110,x:31773,y:34084,varname:node_8110,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4387,x:31773,y:34249,ptovrint:False,ptlb:Flow Speed,ptin:_FlowSpeed,varname:node_4387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6659,x:31986,y:34084,varname:node_6659,prsc:2|A-8110-TSL,B-4387-OUT;n:type:ShaderForge.SFN_Frac,id:729,x:32358,y:34081,varname:node_729,prsc:2|IN-6659-OUT;n:type:ShaderForge.SFN_Add,id:1572,x:32185,y:34227,varname:node_1572,prsc:2|A-6659-OUT,B-3584-OUT;n:type:ShaderForge.SFN_Vector1,id:3584,x:31986,y:34316,varname:node_3584,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7321,x:32614,y:33824,varname:node_7321,prsc:2|A-5795-OUT,B-729-OUT;n:type:ShaderForge.SFN_Frac,id:1488,x:32358,y:34227,varname:node_1488,prsc:2|IN-1572-OUT;n:type:ShaderForge.SFN_Multiply,id:2454,x:32614,y:33987,varname:node_2454,prsc:2|A-5795-OUT,B-1488-OUT;n:type:ShaderForge.SFN_TexCoord,id:1534,x:32614,y:33601,varname:node_1534,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3302,x:32814,y:33824,varname:node_3302,prsc:2|A-9147-OUT,B-7321-OUT;n:type:ShaderForge.SFN_Add,id:79,x:32814,y:33987,varname:node_79,prsc:2|A-9147-OUT,B-2454-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3275,x:32814,y:33601,ptovrint:False,ptlb:Sky Texture,ptin:_SkyTexture,varname:node_3275,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1366,x:33114,y:33715,varname:node_1366,prsc:2,ntxv:0,isnm:False|UVIN-3302-OUT,TEX-3275-TEX;n:type:ShaderForge.SFN_Tex2d,id:7607,x:33110,y:33973,varname:node_7607,prsc:2,ntxv:0,isnm:False|UVIN-79-OUT,TEX-3275-TEX;n:type:ShaderForge.SFN_Lerp,id:3838,x:33365,y:33775,varname:node_3838,prsc:2|A-1366-RGB,B-7607-RGB,T-2073-OUT;n:type:ShaderForge.SFN_Subtract,id:2482,x:32705,y:34230,varname:node_2482,prsc:2|A-4698-OUT,B-729-OUT;n:type:ShaderForge.SFN_Vector1,id:4698,x:32358,y:34449,varname:node_4698,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:5512,x:32915,y:34223,varname:node_5512,prsc:2|A-2482-OUT,B-4698-OUT;n:type:ShaderForge.SFN_Abs,id:2073,x:33110,y:34186,varname:node_2073,prsc:2|IN-5512-OUT;n:type:ShaderForge.SFN_NormalVector,id:6040,x:31531,y:33305,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector1,id:2700,x:31811,y:33979,varname:node_2700,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector3,id:802,x:30777,y:33311,varname:node_802,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Dot,id:7318,x:31743,y:33311,varname:node_7318,prsc:2,dt:0|A-6170-OUT,B-802-OUT;n:type:ShaderForge.SFN_Lerp,id:1672,x:32400,y:33342,varname:node_1672,prsc:2|A-1542-OUT,B-2700-OUT,T-460-OUT;n:type:ShaderForge.SFN_Power,id:3967,x:31906,y:33365,varname:node_3967,prsc:2|VAL-7318-OUT,EXP-9953-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9953,x:31703,y:33508,ptovrint:False,ptlb:Top Blend,ptin:_TopBlend,varname:node_9953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:11;n:type:ShaderForge.SFN_Clamp01,id:460,x:32154,y:33347,varname:node_460,prsc:2|IN-3967-OUT;n:type:ShaderForge.SFN_ViewVector,id:2542,x:30619,y:33442,varname:node_2542,prsc:2;n:type:ShaderForge.SFN_Negate,id:6170,x:30777,y:33442,varname:node_6170,prsc:2|IN-2542-OUT;n:type:ShaderForge.SFN_Cross,id:5727,x:30975,y:33513,varname:node_5727,prsc:2|A-802-OUT,B-6170-OUT;n:type:ShaderForge.SFN_Cross,id:9591,x:31148,y:33741,varname:node_9591,prsc:2|A-5727-OUT,B-5727-OUT;n:type:ShaderForge.SFN_Code,id:9147,x:32622,y:33064,varname:node_9147,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAG8AcgBtAGEAbABpAHoAZQBkAEMAbwBvAHIAZABzACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAYwBvAG8AcgBkAHMAKQA7AA0ACgBmAGwAbwBhAHQAIABsAGEAdABpAHQAdQBkAGUAIAA9ACAAYQBjAG8AcwAoAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB5ACkAOwANAAoAZgBsAG8AYQB0ACAAbABvAG4AZwBpAHQAdQBkAGUAIAA9ACAAYQB0AGEAbgAyACgAbgBvAHIAbQBhAGwAaQB6AGUAZABDAG8AbwByAGQAcwAuAHoALAAgAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB4ACkAOwANAAoAZgBsAG8AYQB0ADIAIABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgAD0AIABmAGwAbwBhAHQAMgAoAGwAbwBuAGcAaQB0AHUAZABlACwAIABsAGEAdABpAHQAdQBkAGUAKQAgACoAIABmAGwAbwBhAHQAMgAoADEALgAwAC8AVQBOAEkAVABZAF8AUABJACwAIAAxAC4AMAAvAFUATgBJAFQAWQBfAFAASQApADsADQAKAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzACAAPQAgAGYAbABvAGEAdAAyACgAMQAuADAALAAxAC4AMAApACAALQAgAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzADsADQAKAHIAZQB0AHUAcgBuACAAKABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgACsAIABmAGwAbwBhAHQANAAoADAALAAgADEALQB1AG4AaQB0AHkAXwBTAHQAZQByAGUAbwBFAHkAZQBJAG4AZABlAHgALAAxACwAMQAuADAAKQAuAHgAeQApACAAKgAgAGYAbABvAGEAdAA0ACgAMAAsACAAMQAtAHUAbgBpAHQAeQBfAFMAdABlAHIAZQBvAEUAeQBlAEkAbgBkAGUAeAAsADEALAAxAC4AMAApAC4AegB3ADsADQAKAA==,output:1,fname:Function_node_9147,width:701,height:384,input:2,input_1_label:coords|A-9641-OUT;n:type:ShaderForge.SFN_ViewVector,id:9359,x:31972,y:33037,varname:node_9359,prsc:2;n:type:ShaderForge.SFN_Negate,id:9641,x:32269,y:33106,varname:node_9641,prsc:2|IN-9359-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6871,x:31389,y:33707,ptovrint:False,ptlb:Wind Direction,ptin:_WindDirection,varname:node_6871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:0,v3:0,v4:0;proporder:3275-6871-4387-4963-9953;pass:END;sub:END;*/

Shader "CubedParadox/Scrolling Skybox" {
    Properties {
        _SkyTexture ("Sky Texture", 2D) = "white" {}
        _WindDirection ("Wind Direction", Vector) = (1,0,0,0)
        _FlowSpeed ("Flow Speed", Float ) = 1
        _FlowPower ("Flow Power", Float ) = 0.1
        _TopBlend ("Top Blend", Float ) = 11
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
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _SkyTexture; uniform float4 _SkyTexture_ST;
            uniform float _TopBlend;
            float2 Function_node_9147( float3 coords ){
            float3 normalizedCoords = normalize(coords);
            float latitude = acos(normalizedCoords.y);
            float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
            float2 sphereCoords = float2(longitude, latitude) * float2(1.0/UNITY_PI, 1.0/UNITY_PI);
            sphereCoords = float2(1.0,1.0) - sphereCoords;
            return (sphereCoords + float4(0, 1-unity_StereoEyeIndex,1,1.0).xy) * float4(0, 1-unity_StereoEyeIndex,1,1.0).zw;
            
            }
            
            uniform float4 _WindDirection;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
////// Lighting:
////// Emissive:
                float2 node_9147 = Function_node_9147( (-1*viewDirection) );
                float3 node_802 = float3(0,1,0);
                float3 node_6170 = (-1*viewDirection);
                float3 node_5727 = cross(node_802,node_6170);
                float3 node_5345 = normalize(_WindDirection.rgb);
                float node_5903 = dot(node_5727,node_5345);
                float node_1542 = dot(cross(node_5727,node_5727),node_5345);
                float2 node_5795 = (float2(node_5903,lerp(node_1542,0.0,saturate(pow(dot(node_6170,node_802),_TopBlend))))*_FlowPower);
                float4 node_8110 = _Time;
                float node_6659 = (node_8110.r*_FlowSpeed);
                float node_729 = frac(node_6659);
                float2 node_3302 = (node_9147+(node_5795*node_729));
                float4 node_1366 = tex2D(_SkyTexture,TRANSFORM_TEX(node_3302, _SkyTexture));
                float2 node_79 = (node_9147+(node_5795*frac((node_6659+0.5))));
                float4 node_7607 = tex2D(_SkyTexture,TRANSFORM_TEX(node_79, _SkyTexture));
                float node_4698 = 0.5;
                float3 emissive = lerp(node_1366.rgb,node_7607.rgb,abs(((node_4698-node_729)/node_4698)));
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
