<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.EditPrefabContentsScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper struct for automatically loading the contents of a Prefab file, saving the contents and unloading the contents again.

This struct allows you to temporarily load the GameObject contents of a Prefab file, modify the contents to your liking inside of a block of code and automatically save the result back to the Prefab file as well as unload the temporary contents when the scope is exited.

This scope struct wraps the API’s LoadPrefabContents, SaveAsPrefabAsset and UnloadPrefabContents.

```csharp
using UnityEditor;
using UnityEngine;public static class PrefabUtilityTesting
{
    [MenuItem("Prefabs/Test_EditPrefabContentsScope")]
    public static void Test()
    {
        // Create a simple test Prefab Asset. Looks like this:
        // Root
        //    A
        //    B
        //    C
        var assetPath = "Assets/MyTempPrefab.prefab";
        var source = new GameObject("Root");
        var childA = new GameObject("A");
        var childB = new GameObject("B");
        var childC = new GameObject("C");
        childA.transform.parent = source.transform;
        childB.transform.parent = source.transform;
        childC.transform.parent = source.transform;
        PrefabUtility.SaveAsPrefabAsset(source, assetPath);        using (var editingScope = new PrefabUtility.EditPrefabContentsScope(assetPath))
        {
            var prefabRoot = editingScope.prefabContentsRoot;            // Removing GameObjects is supported
            Object.DestroyImmediate(prefabRoot.transform.GetChild(2).gameObject);            // Reordering and reparenting are supported
            prefabRoot.transform.GetChild(1).parent = prefabRoot.transform.GetChild(0);            // Adding GameObjects is supported
            var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
            cube.transform.parent = prefabRoot.transform;
            cube.name = "D";            // Adding and removing components are supported
            prefabRoot.AddComponent<AudioSource>();
        }        // Prefab Asset now looks like this:
        // Root
        //    A
        //       B
        //    D
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| assetPath | File path of the Prefab asset. |
| prefabContentsRoot | The root GameObject of the Prefab contents. |

### Constructors

| Constructor | Description |
| --- | --- |
| PrefabUtility.EditPrefabContentsScope |  |
