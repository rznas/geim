<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LazyLoadReference_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Serializable lazy reference to a UnityEngine.Object contained in an asset file.

Allows an asset to reference another asset but delays loading the referenced asset until it is used, instead of loading it when the referencing object is deserialized.
 
 **Typical use cases**:
 - For importer settings that need to reference assets but reading the settings from disk cannot load the referenced assets because they may not be imported and are not yet accessible.
 - For reducing the time it takes to open a scene by loading only the assets needed for the initial set up, or display, in Edit Mode.
 
 **Notes:**

- A lazy reference has a slight performance overhead compared to a direct reference.
- In a standalone player, all assets are loaded when the player is loaded, or when asset bundles are loaded.

```csharp
using UnityEditor.AssetImporters;
using UnityEngine;[ScriptedImporter(1, "foo")]
public class FooImporter : ScriptedImporter
{
    public LazyLoadReference<Material> m_DefaultMaterial;    public override void OnImportAsset(AssetImportContext ctx)
    {
        // At this point, 'm_DefaultMaterial' may refer to a material that has yet to be loaded into memory        Material mat;
        if (!m_DefaultMaterial.isSet) // 'isSet' Does not load the referenced material even if not in memory.
        {
            mat = new Material(Shader.Find("Transparent/Diffuse"));
            ctx.AddObjectToAsset("mat", mat);
        }
        else
        {
            mat = m_DefaultMaterial.asset; // Will load referenced material if it is not already in memory.
        }        var obj = GameObject.CreatePrimitive(PrimitiveType.Cube);
        obj.transform.GetComponent<MeshRenderer>().material = mat;        ctx.AddObjectToAsset("main", obj);
        ctx.SetMainObject(obj);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| asset | Accessor to the referenced asset. |
| entityId | Returns the EntityId to the referenced asset. |
| isBroken | Convenience property that checks whether the reference is broken: refers to an object that is either not available or not loadable. |
| isSet | Determines if an asset is being targeted, regardless of whether the asset is available for loading. |

### Constructors

| Constructor | Description |
| --- | --- |
| LazyLoadReference_1 | Construct a new LazyLoadReference. |

### Operators

| Operator | Description |
| --- | --- |
| LazyLoadReference<T> | Implicit conversion from asset reference to LazyLoadReference. |
| LazyLoadReference<T> | Implicit conversion from EntityId to LazyLoadReference. |
