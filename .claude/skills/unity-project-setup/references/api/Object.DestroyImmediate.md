<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.DestroyImmediate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | Object to be destroyed. |
| allowDestroyingAssets | Set to true to allow assets to be destroyed. |

### Description

Destroys the specified object immediately. Use with caution and in Edit mode only.

`DestroyImmediate` is intended for use in scripts that run in Edit mode, not at runtime. In Edit mode, the usual delayed destruction performed by `Destroy` does not occur, so immediate destruction is necessary.

In runtime code, use Object.Destroy instead. This call marks the object for destruction at the end of the current frame, which is safer and prevents many common issues. If you only want to deactivate a GameObject, use GameObject.SetActive instead.

Attempting to call `DestroyImmediate` during physics trigger/contact events, animation event callbacks, rendering callbacks, or MonoBehaviour.OnValidate results in an error.

Using `DestroyImmediate` with the optional `allowDestroyingAssets` parameter set to `true` can permanently remove assets from your project. 

Destroying or removing objects from a collection (such as an array or list) while looping through it can cause skipped elements, out-of-bounds errors, or other unpredictable behavior. This is a general programming risk, not unique to Unity.

```csharp
// Select one or more GameObjects in your hierarchy.
// Go to the menu: Tools > Destroy Selected GameObjects Immediately.
// The selected GameObjects will be deleted from the scene immediately.using UnityEngine;
using UnityEditor;public class DestroyImmediateExample
{
    [MenuItem("Tools/Destroy Selected GameObjects Immediately")]
    static void DestroySelectedGameObjects()
    {
        // Get all selected GameObjects in the scene
        var selected = Selection.gameObjects;        if (selected.Length == 0)
        {
            Debug.LogWarning("No GameObjects selected!");
            return;
        }        foreach (var go in selected)
        {
            // Destroys the object immediately in the editor
            Object.DestroyImmediate(go);
        }
        Debug.Log($"{selected.Length} GameObjects destroyed immediately.");
    }
}
```
