<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.RunBeforeAssemblyAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assemblyName | The name of the assembly that should be called after this callback. |

### Description

Add this attribute to a callback method to indicate that this callback must be run before any callbacks that are part of the specified assembly.

To define dependencies for a callback, use the following attributes:

- RunAfterClassAttribute, RunBeforeClassAttribute
- RunAfterAssemblyAttribute, RunBeforeAssemblyAttribute
- RunAfterPackageAttribute, RunBeforePackageAttribute

When the callback is invoked, Unity generates a dependency graph and uses topological sorting to ensure that all dependencies are run in sequence based on their dependencies. If callbacks dependencies are not present in the project then the instruction will be ignored during the generation of the dependency graph.

**Note:** Defining callback dependencies is currently only supported by the AssetPostprocessor.OnPostprocessAllAssets callback.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEngine;// This example shows how to ensure that a callback is called before the Addressables assembly has been called.
class MyPostprocessor : AssetPostprocessor
{
    [RunBeforeAssembly("Unity.Addressables.Editor")]
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
        Debug.Log("MyAllPostprocessor");
    }
}
```
