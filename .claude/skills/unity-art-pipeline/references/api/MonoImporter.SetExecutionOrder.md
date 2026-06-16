<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.SetExecutionOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| script | The script to set the execution order for. |
| order | The execution order for the given MonoScript. |

### Description

Sets the execution order for a MonoScript. This method forces Unity to reimport the MonoImporter for the target script.

This is the same execution order that the Script Execution Order Settings window displays.

The default execution order for scripts is 0.

Additional resources: MonoImporter.GetExecutionOrder.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Set Execution Order for a Script")]
    public static void SetExecutionOrderForAScript()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;        MonoImporter.SetExecutionOrder(monoImporter.GetScript(), 100);
    }
}
```
