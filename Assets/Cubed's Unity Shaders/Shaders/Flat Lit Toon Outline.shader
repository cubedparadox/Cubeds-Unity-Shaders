// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:34745,y:32526,varname:node_9361,prsc:2|custl-5720-OUT,olwid-1562-OUT,olcol-6093-OUT;n:type:ShaderForge.SFN_LightColor,id:3406,x:33576,y:32314,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:851,x:34146,y:32294,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5927,x:34146,y:32479,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:544,x:34341,y:32479,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Dot,id:7999,x:33756,y:32314,varname:node_7999,prsc:2,dt:0|A-3406-RGB,B-2056-OUT;n:type:ShaderForge.SFN_Vector3,id:2056,x:33576,y:32479,varname:node_2056,prsc:2,v1:0.3,v2:0.59,v3:0.11;n:type:ShaderForge.SFN_Code,id:4082,x:33205,y:32876,varname:node_4082,prsc:2,code:ZgBsAG8AYQB0ADQAIAB2AGEAbAAgAD0AIABVAE4ASQBUAFkAXwBTAEEATQBQAEwARQBfAFQARQBYAEMAVQBCAEUAXwBMAE8ARAAoAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwACwAIAByAGUAZgBsAFYAZQBjAHQALAAgADcAKQA7AAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAEMAbwBsACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAdgBhAGwALAAgAHUAbgBpAHQAeQBfAFMAcABlAGMAQwB1AGIAZQAwAF8ASABEAFIAKQA7AAoAcgBlAHQAdQByAG4AIAByAGUAZgBsAEMAbwBsACAAKgAgADAALgAwADIAOwA=,output:2,fname:CubemapReflections,width:515,height:130,input:2,input_1_label:reflVect|A-7331-OUT;n:type:ShaderForge.SFN_Code,id:3693,x:33428,y:32649,varname:node_3693,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:292,height:112,input:2,input_1_label:normal|A-9945-OUT;n:type:ShaderForge.SFN_Dot,id:2892,x:33743,y:33082,varname:node_2892,prsc:2,dt:0|A-4082-OUT,B-3463-OUT;n:type:ShaderForge.SFN_Vector3,id:3463,x:33536,y:33144,varname:node_3463,prsc:2,v1:0.3,v2:0.59,v3:0.11;n:type:ShaderForge.SFN_Multiply,id:9937,x:33925,y:32479,varname:node_9937,prsc:2|A-7999-OUT,B-5621-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:5621,x:33756,y:32479,varname:node_5621,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8925,x:34358,y:32820,varname:node_8925,prsc:2,v1:0.0005;n:type:ShaderForge.SFN_Multiply,id:1562,x:34554,y:32837,varname:node_1562,prsc:2|A-8925-OUT,B-4713-OUT;n:type:ShaderForge.SFN_Multiply,id:5720,x:34511,y:32608,varname:node_5720,prsc:2|A-544-OUT,B-4653-OUT;n:type:ShaderForge.SFN_Clamp01,id:4653,x:34318,y:32626,varname:node_4653,prsc:2|IN-6707-OUT;n:type:ShaderForge.SFN_ViewPosition,id:102,x:32741,y:32589,varname:node_102,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1025,x:32953,y:32653,varname:node_1025,prsc:2|A-102-XYZ,B-996-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:996,x:32741,y:32734,varname:node_996,prsc:2;n:type:ShaderForge.SFN_Add,id:6707,x:34121,y:32626,varname:node_6707,prsc:2|A-3693-OUT,B-4082-OUT,C-9937-OUT;n:type:ShaderForge.SFN_Normalize,id:7331,x:33121,y:32653,varname:node_7331,prsc:2|IN-1025-OUT;n:type:ShaderForge.SFN_Vector3,id:9945,x:33221,y:32557,varname:node_9945,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:4713,x:34154,y:32828,ptovrint:False,ptlb:Line_Thickness,ptin:_Line_Thickness,varname:node_4713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Vector3,id:6093,x:34479,y:33015,varname:node_6093,prsc:2,v1:0,v2:0,v3:0;proporder:851-5927-4713;pass:END;sub:END;*/

Shader "CubedParadox/Flat Lit Toon Outline" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _Line_Thickness ("Line_Thickness", Float ) = 5
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
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _Line_Thickness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*(0.0005*_Line_Thickness),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0,0,0),0);
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
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                LIGHTING_COORDS(1,2)
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 finalColor = ((_MainTex_var.rgb*_Color.rgb)*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(dot(_LightColor0.rgb,float3(0.3,0.59,0.11))*attenuation))));
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
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                LIGHTING_COORDS(1,2)
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_4082 = CubemapReflections( normalize((_WorldSpaceCameraPos-objPos.rgb)) );
                float3 finalColor = ((_MainTex_var.rgb*_Color.rgb)*saturate((Function_node_3693( float3(0,1,0) )+node_4082+(dot(_LightColor0.rgb,float3(0.3,0.59,0.11))*attenuation))));
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
