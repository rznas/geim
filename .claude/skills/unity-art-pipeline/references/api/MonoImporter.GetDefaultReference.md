<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.GetDefaultReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of a public field in the imported MonoScript. |

### Returns

**Object** The Unity object to use as a default value for the given reference field.

### Description

Gets the default value for a reference field in the imported MonoScript.

Additional resources: MonoImporter.SetDefaultReferences.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Default Reference")]
    public static void GetDefaultReference()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;
        var value = monoImporter.GetDefaultReference("MyGameObject");
        Debug.Log($"Default reference for MyGameObject in {monoImporter.GetScript().GetClass().FullName} is {value}");
    }
}
```
