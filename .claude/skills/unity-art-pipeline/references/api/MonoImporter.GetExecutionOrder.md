<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.GetExecutionOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| script | The script to retrieve the execution order for. |

### Returns

**int** Returns the execution order for the given MonoScript.

### Description

Gets the execution order for a MonoScript.

This is the same execution order that the Script Execution Order Settings window displays.

The default execution order for scripts is 0.

Additional resources: MonoImporter.SetExecutionOrder.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Execution Order for a Script")]
    public static void GetExecutionOrderForAScript()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;
        var executionOrder = MonoImporter.GetExecutionOrder(monoImporter.GetScript());        Debug.Log($"Execution order for {monoImporter.assetPath} is {executionOrder}");
    }
}
```
