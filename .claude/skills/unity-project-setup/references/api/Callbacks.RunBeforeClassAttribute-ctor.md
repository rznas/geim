<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.RunBeforeClassAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The class type that should be run after this callback. |
| assemblyQualifiedName | The assembly-qualified name of the class type that should be run after this callback. This dependency attribute will be ignored when the name can not be resolved, such as if the class is not present in the current project. |

### Description

Add this attribute to a callback method to mark that this callback must be run before any callbacks that are part of the specified class.

To define dependencies for a callback, use the following attributes:

- RunAfterClassAttribute, RunBeforeClassAttribute
- RunAfterAssemblyAttribute, RunBeforeAssemblyAttribute
- RunAfterPackageAttribute, RunBeforePackageAttribute

When the callback is invoked, Unity generates a dependency graph and uses topological sorting to ensure that all dependencies are run in sequence based on their dependencies. If callbacks dependencies are not present in the project then the instruction will be ignored during the generation of the dependency graph.

**Note:** Defining callback dependencies is currently only supported by the AssetPostprocessor.OnPostprocessAllAssets callback.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;class RunFirst : AssetPostprocessor
{
    [RunBeforeClass(typeof(RunNext))]
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
    }
}class RunNext : AssetPostprocessor
{
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
    }
}class RunLast : AssetPostprocessor
{
    [RunAfterClass(typeof(RunNext))]
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
    }
}
```
