<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.GetIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Texture2D** Returns the custom icon that will be associated with the imported MonoScript. If no custom icon will be associated with the imported MonoScript, returns null.

### Description

Gets the icon to associate with the imported MonoScript.

Additional resources: MonoImporter.SetIcon, EditorGUIUtility.GetIconForObject.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Icon for MonoScript from MonoImporter")]
    public static void GetIconForMonoScriptFromMonoImporter()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;
        var icon = monoImporter.GetIcon();
        Debug.Log($"Icon for {assetPath} is {icon}");
    }
}
```
