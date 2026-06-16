<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract class to derive from for defining custom GUI for shader properties and for extending the material preview.

Derive from this class for controlling how shader properties should be presented. For a shader to use this custom GUI use the 'CustomEditor' property in the shader. Note that CustomEditor can also be used for classes deriving from MaterialEditor (search for: Custom Material Editors). Note: Only the ShaderGUI approach works with Substance materials this is therefore the recommended approach to custom gui for shaders. See ShaderGUI.OnGUI, ShaderGUI.OnMaterialPreviewGUI, ShaderGUI.OnMaterialPreviewSettingsGUI.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Linq;public class CustomShaderGUI : ShaderGUI
{
    override public void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        // render the shader properties using the default GUI
        base.OnGUI(materialEditor, properties);        // get the current keywords from the material
        Material targetMat = materialEditor.target as Material;
        string[] keyWords = targetMat.shaderKeywords;        // see if redify is set, then show a checkbox
        bool redify = keyWords.Contains("REDIFY_ON");
        EditorGUI.BeginChangeCheck();
        redify = EditorGUILayout.Toggle("Redify material", redify);
        if (EditorGUI.EndChangeCheck())
        {
            // if the checkbox is changed, reset the shader keywords
            var keywords = new List<string> { redify ? "REDIFY_ON" : "REDIFY_OFF" };
            targetMat.shaderKeywords = keywords.ToArray();
            EditorUtility.SetDirty(targetMat);
        }
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| AssignNewShaderToMaterial | This method is called when a new shader has been selected for a Material. |
| OnClosed | This method is called when the ShaderGUI is being closed. |
| OnGUI | To define a custom shader GUI use the methods of materialEditor to render controls for the properties array. |
| OnMaterialPreviewGUI | Override for extending the rendering of the Preview area or completly replace the preview (by not calling base.OnMaterialPreviewGUI). |
| OnMaterialPreviewSettingsGUI | Override for extending the functionality of the toolbar of the preview area or completly replace the toolbar by not calling base.OnMaterialPreviewSettingsGUI. |
| ValidateMaterial | When the user loads a Material using this ShaderGUI into memory or changes a value in the Inspector, the Editor calls this method. |

### Static Methods

| Method | Description |
| --- | --- |
| FindProperty | Find shader properties. |
