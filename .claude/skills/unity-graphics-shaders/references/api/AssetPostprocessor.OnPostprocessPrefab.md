<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets a notification when a Prefab completes importing.

To use this function, add it to a subclass. It lets you modify the imported GameObject. GameObjects only exist during the import and Unity destroys them immediately after import.

This function is called before the imported Prefab is created in the Library folder and before it is written to disk. Therefore, you have full control over the generated GameObjects and Components.

Any references to GameObjects become invalid after Unity completes the import. As such, you can't create a new Prefab in a different file from `OnPostprocessPrefab` that references meshes in the imported Prefab file.

To add new Asset objects to the Prefab, call `AssetPostprocessor.context.AddObjectToAsset`.

The postprocessor can set or modify hideflags on objects in the Prefab. Added asset objects always get the DontSaveInEditor and NotEditable flags added. Added GameObjects and Components always get the DontSaveInEditor flag added. The DontSaveInEditor flag is always set to avoid the object from being saved back into the Prefab source asset, because this duplicates the generated objects every time the Prefab is saved.

**Important:** Modifications made in `OnPostprocessPrefab` only affect the imported prefab in the Library folder, not the source prefab asset. When editing a prefab in prefab editing mode, Unity displays the source prefab from the Assets folder, so changes made during import aren't visible and can't be saved back to the source asset. If you need to make persistent changes to the source prefab that appear in prefab editing mode and are version-controlled, use APIs like AssetDatabase.LoadMainAssetAtPath and PrefabUtility.SavePrefabAsset instead of `OnPostprocessPrefab`.

The `root` parameter is the top-level GameObject of the imported Prefab hierarchy. This is the GameObject that contains all other GameObjects in the prefab as children or descendants.

```csharp
using UnityEngine;
using UnityEditor;// Adds a mesh collider to each game object that contains collider in its name
public class Example : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessPrefab(GameObject g)
    {
        Apply(g.transform);
    }    void Apply(Transform t)
    {
        if (t.name.ToLower().Contains("collider"))
            t.gameObject.AddComponent<MeshCollider>();        // Recurse
        foreach (Transform child in t)
            Apply(child);
    }
}
```
