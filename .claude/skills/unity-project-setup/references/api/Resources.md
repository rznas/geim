<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Resources class allows you to find and access objects including assets.

When you build your project, all assets in any `Resources` folders are included in the built Player. You can then load these assets at runtime using Resources.Load. You must create the `Resources` folder. Unity doesn't automatically create a `Resources` folder when you create a project. Your project can contain multiple `Resources` folders.

Use Resources.FindObjectsOfTypeAll to locate assets and scene objects in the Editor.

One way to access assets in Unity is to expose a reference to an asset by declaring a member-variable, then assign it in the Inspector, instead of using the direct path to an asset. This allows Unity to automatically calculate which assets are used when building a Player and minimizes the size of the Player to only contain the assets used in your application. However, this method fixes the references in the Inspector which makes them less flexible.

You can use the Resources class to load assets at runtime by specifying their path as a string. For example, you might want to create a GameObject procedurally from a script and assign a texture to a procedurally generated mesh.

Some loaded assets, most notably textures, can use up memory even when no instance exists in the Scene. To reclaim this memory when the asset is no longer needed, you can use Resources.UnloadUnusedAssets.

For more information, refer to the Introduction to the Resources system.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject go = GameObject.CreatePrimitive(PrimitiveType.Plane);
        Renderer rend = go.GetComponent<Renderer>();
        rend.material.mainTexture = Resources.Load("glass") as Texture;
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| EntityIdsToObjectList | Translates an array of entity IDs to a list of Object references. |
| EntityIdToObject | Translates an EntityId to an object reference. |
| FindObjectsOfTypeAll | Returns a list of all objects of Type T. |
| Load | Loads the asset of the requested type stored at path in a Resources folder. |
| LoadAll | Loads all assets in a folder or file at path in a Resources folder. |
| LoadAsync | Asynchronously loads an asset stored at path in a Resources folder. |
| UnloadAsset | Unloads assetToUnload from memory. |
| UnloadUnusedAssets | Unloads assets that are not used. |
