<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.GetAllRuntimeMonoScripts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**MonoScript[]** Returns an array of scripts.

### Description

Gets an array of scripts that will be available at runtime.

Additional resources: AssetDatabase.FindAssets.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Scripts Available at Runtime")]
    public static void GetScriptsAvailableAtRuntime()
    {
        foreach (var monoScript in MonoImporter.GetAllRuntimeMonoScripts())
        {
            Debug.Log($"Class: {monoScript.GetClass()}, Name: {monoScript.name}");
        }
    }
}
```
