<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.OnEnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the object is loaded.

`OnEnable` is called whenever a ScriptableObject instance is loaded into memory. This happens in the following scenarios:

- At Editor startup, for all ScriptableObjects referenced in open scenes.
- On creation of a new ScriptableObject created as an asset via the Create Asset menu in the Editor.
- On instantiation of a ScriptableObject instantiated at runtime via ScriptableObject.CreateInstance or by runtime loading of the asset.
- On domain reload, for all ScriptableObjects loaded in memory on.
- On first loading a scene which contains a reference to the ScriptableObject in the Hierarchy window, or on subsequent loads if the original instance has since been garbage collected.
- On first selection of a ScriptableObject in the Project window, or on subsequent selections if the original instance has since been garbage collected.

In most circumstances, `OnEnable` is only called once for a particular instance of a ScriptableObject asset in memory and is appropriate to use for initialization. If `OnEnable` is being called multiple times, it's likely that the ScriptableObject is being re-instantiated. This can happen for a variety of reasons.

For example, if you deselect the ScriptableObject in the Project window or open a new scene that doesn't reference it, the object goes out of scope and can be garbage collected. Alternatively, events that trigger domain reloads, such as recompiling scripts or reimporting assets, can also cause ScriptableObjects to be re-instantiated and `OnEnable` to be called again.

In the Editor, Unity also sometimes creates temporary instances of ScriptableObjects for property inspection or editing. Each temporary instance receives its own `OnEnable` call, but ScriptableObject.OnDisable might not be called if the object is garbage collected or destroyed without proper cleanup.

`OnEnable` can't be a coroutine.

```csharp
// Right-click in the Project window > Create > Example > CounterData.
// Every time you recompile scripts or reload the asset, OnEnable is called, and the counter resets.using UnityEngine;[CreateAssetMenu(menuName = "Example/CounterData")]
public class CounterData : ScriptableObject
{
    public int counter;    // Called when the ScriptableObject is loaded or reloaded
    void OnEnable()
    {
        Debug.Log("CounterData enabled! Resetting counter.");
        counter = 0; // Reset counter whenever enabled
    }
}
```
