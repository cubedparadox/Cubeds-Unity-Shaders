#ifndef FLAT_LIT_TOON_SHADOWS_INCLUDED

#include "UnityCG.cginc"
#include "UnityShaderVariables.cginc"

// Do dithering for alpha blended shadows on SM3+/desktop;
// on lesser systems do simple alpha-tested shadows
#if defined(_ALPHABLEND_ON) || defined(_ALPHAPREMULTIPLY_ON)
    #if !((SHADER_TARGET < 30) || defined (SHADER_API_MOBILE) || defined(SHADER_API_D3D11_9X) || defined (SHADER_API_PSP2) || defined (SHADER_API_PSM))
        #define UNITY_STANDARD_USE_DITHER_MASK 1
    #endif
#endif

// Need to output UVs in shadow caster, since we need to sample texture and do clip/dithering based on it
#if defined(_ALPHATEST_ON) || defined(_ALPHABLEND_ON) || defined(_ALPHAPREMULTIPLY_ON)
    #define UNITY_STANDARD_USE_SHADOW_UVS 1
#endif

uniform float4      _Color;
uniform float       _Cutoff;
uniform sampler2D   _MainTex;
uniform float4      _MainTex_ST;
#ifdef UNITY_STANDARD_USE_DITHER_MASK
    uniform sampler3D   _DitherMaskLOD;
#endif

struct VertexInput
{
    float4 vertex   : POSITION;
    float3 normal   : NORMAL;
    float2 uv0      : TEXCOORD0;
};


// Don't make the structure if it's empty (it's an error to have empty structs on some platforms...)
#if !defined(V2F_SHADOW_CASTER_NOPOS_IS_EMPTY) || defined(UNITY_STANDARD_USE_SHADOW_UVS)
struct VertexOutputShadowCaster
{
    V2F_SHADOW_CASTER_NOPOS
        // Need to output UVs in shadow caster, since we need to sample texture and do clip/dithering based on it
    #if defined(UNITY_STANDARD_USE_SHADOW_UVS)
        float2 tex : TEXCOORD1;
    #endif
};
#endif

// We have to do these dances of outputting SV_POSITION separately from the vertex shader,
// and inputting VPOS in the pixel shader, since they both map to "POSITION" semantic on
// some platforms, and then things don't go well.


void vertShadowCaster(VertexInput v,
    #if !defined(V2F_SHADOW_CASTER_NOPOS_IS_EMPTY) || defined(UNITY_STANDARD_USE_SHADOW_UVS)
        out VertexOutputShadowCaster o,
    #endif
    out float4 opos : SV_POSITION)
{
    TRANSFER_SHADOW_CASTER_NOPOS(o, opos)
    #if defined(UNITY_STANDARD_USE_SHADOW_UVS)
        o.tex = TRANSFORM_TEX(v.uv0, _MainTex);
    #endif
}


half4 fragShadowCaster(
    #if !defined(V2F_SHADOW_CASTER_NOPOS_IS_EMPTY) || defined(UNITY_STANDARD_USE_SHADOW_UVS)
        VertexOutputShadowCaster i
    #endif
    #ifdef UNITY_STANDARD_USE_DITHER_MASK
        , UNITY_VPOS_TYPE vpos : VPOS
    #endif
) : SV_Target
{
    #if defined(UNITY_STANDARD_USE_SHADOW_UVS)
        half alpha = tex2D(_MainTex, i.tex).a * _Color.a;
    #if defined(_ALPHATEST_ON)
        clip(alpha - _Cutoff);
    #endif
    #if defined(_ALPHABLEND_ON) || defined(_ALPHAPREMULTIPLY_ON)
        #if defined(UNITY_STANDARD_USE_DITHER_MASK)
            // Use dither mask for alpha blended shadows, based on pixel position xy
            // and alpha level. Our dither texture is 4x4x16.
            half alphaRef = tex3D(_DitherMaskLOD, float3(vpos.xy*0.25,alpha*0.9375)).a;
            clip(alphaRef - 0.01);
            #else
                clip(alpha - _Cutoff);
            #endif
        #endif
    #endif

    SHADOW_CASTER_FRAGMENT(i)
}

#endif