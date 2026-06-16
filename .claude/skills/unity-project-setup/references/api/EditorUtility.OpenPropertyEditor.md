<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.OpenPropertyEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to open in the properties editor. |

### Description

Open properties editor for an Object.

Opens an Inspector-like window to show and edit the properties of an Object.

```csharp
using UnityEditor;
using UnityEngine;public class EditorUtilityOpenPropertyEditor
{
    [MenuItem("Examples/OpenPropertyEditor")]
    public static void OpenSceneProperties()
    {
        var scene = AssetDatabase.LoadAssetAtPath<UnityEngine.Object>("Assets/Scenes/SampleScene.unity");
        EditorUtility.OpenPropertyEditor(scene);
    }
}
```
