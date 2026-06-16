<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnEnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a component of an active GameObject is first enabled.

`OnEnable` is called in the following scenarios:

- When entering Play mode, if the GameObject is active (GameObject.activeInHierarchy == `true`) and the script component is enabled (Behaviour.enabled == `true`).
- When enabling the script component at runtime (via code or the Inspector), if the GameObject is already active.
- When activating the GameObject (or one of its inactive parent GameObjects) at runtime, if the script component is already enabled.

`OnEnable` is always called after MonoBehaviour.Awake and before MonoBehaviour.Start on entering Play Mode.

`OnEnable` cannot be a coroutine.

Additional resources: MonoBehaviour.OnDisable.

```csharp
// Implement OnDisable and OnEnable script functions.
// These functions will be called when the script component
// is enabled.
// This example also supports the Editor. The Update function
// will be called, for example, when the position of the
// GameObject is changed.using UnityEngine;[ExecuteInEditMode]
public class PrintOnOff : MonoBehaviour
{
    void OnDisable()
    {
        Debug.Log("PrintOnDisable: script was disabled");
    }    void OnEnable()
    {
        Debug.Log("PrintOnEnable: script was enabled");
    }    void Update()
    {
#if UNITY_EDITOR
        Debug.Log("Editor causes this Update");
#endif
    }
}
```
