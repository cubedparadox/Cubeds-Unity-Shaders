using UnityEditor;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using System;

public class FlatLitToonInspector : ShaderGUI
{
    MaterialProperty mainTexture;
    MaterialProperty color;
    MaterialProperty colorMask;
    MaterialProperty shadow;
    MaterialProperty outlineWidth;
    MaterialProperty outlineTint;
    MaterialProperty emissionMap;
    MaterialProperty emissionColor;
    MaterialProperty normalMap;

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] props)
    {
        { //Find Properties
            mainTexture = FindProperty("_MainTex", props);
            color = FindProperty("_Color", props);
            colorMask = FindProperty("_ColorMask", props);
            shadow = FindProperty("_Shadow", props);
            outlineWidth = FindProperty("_outline_width", props);
            outlineTint = FindProperty("_outline_tint", props);
            emissionMap = FindProperty("_EmissionMap", props);
            emissionColor = FindProperty("_EmissionColor", props);
            normalMap = FindProperty("_BumpMap", props);
        }

        //m_MaterialEditor = materialEditor;
        Material material = materialEditor.target as Material;
        
        { //Shader Properties GUI
            EditorGUIUtility.labelWidth = 0f;

            bool dontOutline = Array.IndexOf(material.shaderKeywords, "DONT_OUTLINE") != -1;
            EditorGUI.BeginChangeCheck();
            {
                materialEditor.TexturePropertySingleLine(new GUIContent("Main Texture", "Main Color Texture (RGB)"), mainTexture, color);
                EditorGUI.indentLevel += 2;
                materialEditor.TexturePropertySingleLine(new GUIContent("Color Mask", "Masks Color Tinting (G)"), colorMask);
                EditorGUI.indentLevel -= 2;
                materialEditor.TexturePropertySingleLine(new GUIContent("Normal Map", "Normal Map (RGB)"), normalMap);
                materialEditor.TexturePropertySingleLine(new GUIContent("Emission", "Emission (RGB)"), emissionMap, emissionColor);
                EditorGUI.BeginChangeCheck();
                materialEditor.TextureScaleOffsetProperty(mainTexture);
                if (EditorGUI.EndChangeCheck())
                    emissionMap.textureScaleAndOffset = mainTexture.textureScaleAndOffset;
                
                EditorGUILayout.Space();
                materialEditor.ShaderProperty(shadow, "Shadow");

                EditorGUI.BeginChangeCheck();
                dontOutline = !EditorGUILayout.Toggle("Outline", !dontOutline);
                if (EditorGUI.EndChangeCheck())
                {
                    if (dontOutline)
                        material.EnableKeyword("DONT_OUTLINE");
                    else
                        material.DisableKeyword("DONT_OUTLINE");
                }
                if(!dontOutline)
                {
                    materialEditor.ShaderProperty(outlineTint, "Tint", 2);
                    materialEditor.ShaderProperty(outlineWidth, "Width", 2);
                }                
            }
            EditorGUI.EndChangeCheck();
        }

    }
}