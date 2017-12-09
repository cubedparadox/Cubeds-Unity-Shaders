using UnityEditor;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using System;

public class FlatLitToonInspector : ShaderGUI
{

    enum OutlineMode
    {
        None,
        Tinted,
        Colored
    }

    MaterialProperty mainTexture;
    MaterialProperty color;
    MaterialProperty colorMask;
    MaterialProperty shadow;
    MaterialProperty outlineWidth;
    MaterialProperty outlineColor;
    MaterialProperty emissionMap;
    MaterialProperty emissionColor;
    MaterialProperty normalMap;
    OutlineMode outlineMode = OutlineMode.Tinted;

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] props)
    {
        { //Find Properties
            mainTexture = FindProperty("_MainTex", props);
            color = FindProperty("_Color", props);
            colorMask = FindProperty("_ColorMask", props);
            shadow = FindProperty("_Shadow", props);
            outlineWidth = FindProperty("_outline_width", props);
            outlineColor = FindProperty("_outline_color", props);
            emissionMap = FindProperty("_EmissionMap", props);
            emissionColor = FindProperty("_EmissionColor", props);
            normalMap = FindProperty("_BumpMap", props);
        }
        
        Material material = materialEditor.target as Material;

        { //Shader Properties GUI
            EditorGUIUtility.labelWidth = 0f;
            
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
                outlineMode = (OutlineMode)EditorGUILayout.EnumPopup("Outline", outlineMode);
                
                if (EditorGUI.EndChangeCheck())
                {
                    switch (outlineMode)
                    {
                        case OutlineMode.None:
                            material.EnableKeyword("NO_OUTLINE");
                            material.DisableKeyword("TINTED_OUTLINE");
                            material.DisableKeyword("COLORED_OUTLINE");
                            break;
                        case OutlineMode.Tinted:
                            material.DisableKeyword("NO_OUTLINE");
                            material.EnableKeyword("TINTED_OUTLINE");
                            material.DisableKeyword("COLORED_OUTLINE");
                            break;
                        case OutlineMode.Colored:
                            material.DisableKeyword("NO_OUTLINE");
                            material.DisableKeyword("TINTED_OUTLINE");
                            material.EnableKeyword("COLORED_OUTLINE");
                            break;
                        default:
                            break;
                    }
                }
                switch (outlineMode)
                {
                    case OutlineMode.Tinted:
                    case OutlineMode.Colored:
                        materialEditor.ShaderProperty(outlineColor, "Color", 2);
                        materialEditor.ShaderProperty(outlineWidth, new GUIContent("Width", "Outline Width in cm"), 2);
                        break;
                    case OutlineMode.None:
                    default:
                        break;
                }                
            }
            EditorGUI.EndChangeCheck();
        }

    }
}