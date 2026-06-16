<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.GetScript.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**MonoScript** Returns the imported script.

### Description

Gets the imported MonoScript. If the imported C# file contains multiple classes, the first is returned.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Output the Name of an Imported MonoScript")]
    public static void OutputTheNameOfAnImportedMonoScript()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;        var monoScript = monoImporter.GetScript();
        Debug.Log($"{assetPath} contains {monoScript.GetClass().FullName}");
    }
}
```
