<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bit mask that controls object destruction, saving and visibility in inspectors.

Additional resources: Object.hideFlags.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Creates a material that is explicitly created & destroyed by the component.
    // Resources.UnloadUnusedAssets will not unload it, and it will not be editable by the inspector.
    private Material ownedMaterial;
    void OnEnable()
    {
        ownedMaterial = new Material(Shader.Find("Diffuse"));
        ownedMaterial.hideFlags = HideFlags.HideAndDontSave;
        GetComponent<Renderer>().sharedMaterial = ownedMaterial;
    }    // Objects created as hide and don't save must be explicitly destroyed by the owner of the object.
    void OnDisable()
    {
        DestroyImmediate(ownedMaterial);
    }
}
```

If you set `HideFlags` to `DontSaveInEditor`, `DontSaveInBuild`, or `HideInHierarchy`, the object is removed internally from the Scene and from from its current physics scene. This includes both 2D and 3D physics scenes. The object also triggers its `OnDisable` and `OnEnable` calls. 

You can use these flags to control whether instantiated assets, such as ScriptableObjects and Materials, that have not yet been saved to the project using AssetDatabase (that is, they are not persistent) are serialized to the scene or not.

### Properties

| Property | Description |
| --- | --- |
| None | A normal, visible object. This is the default. |
| HideInHierarchy | The object will not appear in the hierarchy. |
| HideInInspector | It is not possible to view it in the inspector. |
| DontSaveInEditor | The object will not be saved to the Scene in the editor. |
| NotEditable | The object is not editable in the Inspector. |
| DontSaveInBuild | The object will not be saved when building a player. |
| DontUnloadUnusedAsset | The object will not be unloaded by Resources.UnloadUnusedAssets. |
| DontSave | The object will not be saved to the Scene. It will not be destroyed when a new Scene is loaded. It is a shortcut for HideFlags.DontSaveInBuild | HideFlags.DontSaveInEditor | HideFlags.DontUnloadUnusedAsset. |
| HideAndDontSave | The GameObject is not shown in the Hierarchy, not saved to the Scene, and not unloaded by Resources.UnloadUnusedAssets. |
