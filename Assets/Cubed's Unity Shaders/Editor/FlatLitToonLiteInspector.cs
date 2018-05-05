using UnityEditor;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using System;

public class FlatLitToonLiteInspector : ShaderGUI
{
    public enum CullingMode
    {
        Off,
        Front,
        Back
    }

    MaterialProperty mainTexture;
    MaterialProperty color;
    MaterialProperty colorMask;
    MaterialProperty shadow;
    MaterialProperty emissionMap;
    MaterialProperty emissionColor;
    MaterialProperty normalMap;
    MaterialProperty alphaCutout;
    MaterialProperty alphaCutoff;
    MaterialProperty cullingMode;

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        { //Find Properties
            mainTexture = FindProperty("_MainTex", properties);
            color = FindProperty("_Color", properties);
            colorMask = FindProperty("_ColorMask", properties);
            shadow = FindProperty("_Shadow", properties);
            emissionMap = FindProperty("_EmissionMap", properties);
            emissionColor = FindProperty("_EmissionColor", properties);
            normalMap = FindProperty("_BumpMap", properties);
            alphaCutout = FindProperty("_AlphaTest", properties);
            alphaCutoff = FindProperty("_Cutoff", properties);
            cullingMode = FindProperty("_Cull", properties);
        }

        Material material = materialEditor.target as Material;


        //Shader Properties GUI
        EditorGUIUtility.labelWidth = 0f;

        EditorGUI.BeginChangeCheck();
        {
            EditorGUI.showMixedValue = cullingMode.hasMixedValue;
            var cMode = (CullingMode)cullingMode.floatValue;

            EditorGUI.BeginChangeCheck();
            cMode = (CullingMode)EditorGUILayout.Popup("Culling Mode", (int)cMode, Enum.GetNames(typeof(CullingMode)));
            if (EditorGUI.EndChangeCheck())
            {
                materialEditor.RegisterPropertyChangeUndo("Rendering Mode");
                cullingMode.floatValue = (float)cMode;
            }
            EditorGUI.showMixedValue = false;
            EditorGUILayout.Space();

            materialEditor.TexturePropertySingleLine(new GUIContent("Main Texture", "Main Color Texture (RGB)"), mainTexture, color);
            EditorGUI.indentLevel += 1;
            materialEditor.TexturePropertySingleLine(new GUIContent("Color Mask", "Masks Color Tinting (G)"), colorMask);
            EditorGUI.indentLevel -= 1;

            materialEditor.TexturePropertySingleLine(new GUIContent("Normal Map", "Normal Map (RGB)"), normalMap);
            materialEditor.TexturePropertySingleLine(new GUIContent("Emission", "Emission (RGB)"), emissionMap, emissionColor);
            EditorGUI.BeginChangeCheck();
            materialEditor.TextureScaleOffsetProperty(mainTexture);
            if (EditorGUI.EndChangeCheck())
            {
                emissionMap.textureScaleAndOffset = mainTexture.textureScaleAndOffset;
            }

            EditorGUILayout.Space();
            EditorGUILayout.Space();
            materialEditor.ShaderProperty(alphaCutout, "Alpha Cutout", 0);
            if (material.GetFloat("_AlphaTest") != 0)
            {
                materialEditor.ShaderProperty(alphaCutoff, "Alpha Cutoff", 2);
            }

            EditorGUILayout.Space();
            materialEditor.ShaderProperty(shadow, "Shadow");
        }
        EditorGUI.EndChangeCheck();

    }
}