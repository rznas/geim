<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.RunBeforePackageAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this attribute to a callback method to mark that this callback must be run before any callbacks that are part of the specified package.

To define dependencies for a callback, use the following attributes:

- RunAfterClassAttribute, RunBeforeClassAttribute
- RunAfterAssemblyAttribute, RunBeforeAssemblyAttribute
- RunAfterPackageAttribute, RunBeforePackageAttribute

When the callback is invoked, Unity generates a dependency graph and uses topological sorting to ensure that all dependencies are run in sequence based on their dependencies. If callbacks dependencies are not present in the project then the instruction will be ignored during the generation of the dependency graph.

**Note:** Defining callback dependencies is currently only supported by the AssetPostprocessor.OnPostprocessAllAssets callback.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;// This will be run between the Addressables and Localization packages.
class Example : AssetPostprocessor
{
    [RunAfterPackage("com.unity.addressables")]
    [RunBeforePackage("com.unity.localization")]
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| packageName | The name of the package that should be run after this callback. |

### Constructors

| Constructor | Description |
| --- | --- |
| RunBeforePackageAttribute | Add this attribute to a callback method to mark that this callback must be run before any callbacks that are part of the specified package. |
