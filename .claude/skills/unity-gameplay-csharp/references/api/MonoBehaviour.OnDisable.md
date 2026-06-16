<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a component itself is disabled or its parent GameObject is deactivated.

`OnDisable` is called in the following scenarios:

- When a component of an active GameObject is disabled via code or the Inspector.
- When an enabled component's parent GameObject is deactivated.
- When the component or parent GameObject is destroyed by calling Object.Destroy.
- When the scene is unloaded.
- When scripts are reloaded as part of a domain reload.

`OnDisable` cannot be a coroutine.

Additional resources: MonoBehaviour.OnEnable.

```csharp
// Implement OnDisable and OnEnable script functions.
// These functions will be called when the attached GameObject
// is activated/deactivated or the script component is enabled/disabled.
// This example also supports running in the Editor. The Update function
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
