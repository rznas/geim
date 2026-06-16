<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification when a model has completed importing.

This lets you modify the imported Game Object, Meshes, AnimationClips referenced by it. Please note that the GameObjects, AnimationClips and Meshes only exist during the import and will be destroyed immediately afterwards.

This function is called before the final Prefab is created and before it is written to disk, thus you have full control over the generated game objects and components.

Any references to game objects or meshes will become invalid after the import has been completed. Thus it is not possible to create a new Prefab in a different file from OnPostprocessModel that references meshes in the imported fbx file.

`root` is the root game object of the imported model.

```csharp
using UnityEngine;
using UnityEditor;// Adds a mesh collider to each game object that contains collider in its name
public class Example : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessModel(GameObject g)
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
