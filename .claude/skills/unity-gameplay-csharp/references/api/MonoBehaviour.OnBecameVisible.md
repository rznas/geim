<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnBecameVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the renderer becomes visible to any camera.

This message is sent to all scripts attached to the renderer. `OnBecameVisible` and MonoBehaviour.OnBecameInvisible are useful to avoid computations that are only necessary when the object is visible.

The Scene view camera in the Unity Editor is treated like a regular camera for visibility checks, so `OnBecameVisible` can be called when objects are visible in the Scene view, even if the application isn't running. Scripts that execute in Edit mode can check Application.isPlaying before running important logic in `OnBecameVisible` to avoid unintended behavior in the Editor.

`OnBecameVisible` can be a coroutine.

```csharp
// Enables the behaviour when it is visibleusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnBecameVisible()
    {
        enabled = true;
    }
}
```
