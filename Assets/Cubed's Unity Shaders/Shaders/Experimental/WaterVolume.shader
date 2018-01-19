// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:4,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33734,y:32785,varname:node_3138,prsc:2|emission-5001-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32944,y:33058,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:7683,x:32547,y:32811,varname:node_7683,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7250,x:32944,y:32906,ptovrint:False,ptlb:Clip Height,ptin:_ClipHeight,varname:node_7250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_If,id:3985,x:33214,y:32970,varname:node_3985,prsc:2|A-6342-OUT,B-7250-OUT,GT-2016-OUT,EQ-7241-RGB,LT-7241-RGB;n:type:ShaderForge.SFN_Vector1,id:2016,x:32944,y:32973,varname:node_2016,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6975,x:32944,y:32682,ptovrint:False,ptlb:Clip Diameter,ptin:_ClipDiameter,varname:node_6975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_If,id:5001,x:33501,y:32787,varname:node_5001,prsc:2|A-9762-OUT,B-7740-OUT,GT-2016-OUT,EQ-3985-OUT,LT-3985-OUT;n:type:ShaderForge.SFN_Distance,id:9762,x:33214,y:32834,varname:node_9762,prsc:2|A-8139-XYZ,B-7683-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:8139,x:32547,y:32939,varname:node_8139,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6342,x:32761,y:32939,varname:node_6342,prsc:2|A-7683-Y,B-8139-Y;n:type:ShaderForge.SFN_Multiply,id:7740,x:33214,y:32683,varname:node_7740,prsc:2|A-6975-OUT,B-1621-OUT;n:type:ShaderForge.SFN_Vector1,id:1621,x:32944,y:32744,varname:node_1621,prsc:2,v1:0.5;proporder:7241-7250-6975;pass:END;sub:END;*/

Shader "CubedParadox/Water Volume" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _ClipHeight ("Clip Height", Float ) = 0
        _ClipDiameter ("Clip Diameter", Float ) = 10
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend DstColor Zero
            Cull Front
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _ClipHeight;
            uniform float _ClipDiameter;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float node_5001_if_leA = step(distance(objPos.rgb,_WorldSpaceCameraPos),(_ClipDiameter*0.5));
                float node_5001_if_leB = step((_ClipDiameter*0.5),distance(objPos.rgb,_WorldSpaceCameraPos));
                float node_3985_if_leA = step((_WorldSpaceCameraPos.g-objPos.g),_ClipHeight);
                float node_3985_if_leB = step(_ClipHeight,(_WorldSpaceCameraPos.g-objPos.g));
                float node_2016 = 1.0;
                float3 node_3985 = lerp((node_3985_if_leA*_Color.rgb)+(node_3985_if_leB*node_2016),_Color.rgb,node_3985_if_leA*node_3985_if_leB);
                float3 emissive = lerp((node_5001_if_leA*node_3985)+(node_5001_if_leB*node_2016),node_3985,node_5001_if_leA*node_5001_if_leB);
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
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
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
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
