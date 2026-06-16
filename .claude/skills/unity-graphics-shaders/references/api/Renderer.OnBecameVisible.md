<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer.OnBecameVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

`OnBecameVisible` is called when the object became visible by any camera.

This message is sent to all scripts attached to the renderer. `OnBecameVisible` and `OnBecameInvisible` are useful to avoid computations that are only necessary when the object is visible.

```csharp
using UnityEngine;public class BecomeVisible : MonoBehaviour
{
    // Disable this script when the GameObject moves out of the camera's view
    void OnBecameInvisible()
    {
        enabled = false;
    }    // Enable this script when the GameObject moves into the camera's view
    void OnBecameVisible()
    {
        enabled = true;
    }    void Update()
    {
        Debug.Log("Script is enabled");
    }
}
```

Note that object is considered visible when it needs to be rendered in the Scene. It might not be actually visible by any camera, but still need to be rendered for shadows for example. Also, when running in the editor, the Scene view cameras will also cause this function to be called.

Additional resources: OnBecameVisible, isVisible.
