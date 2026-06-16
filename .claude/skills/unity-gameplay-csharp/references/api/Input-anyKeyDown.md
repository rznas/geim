<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-anyKeyDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true the first frame the user hits any key or mouse button. (Read Only)

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

You should be polling this variable from the MonoBehaviour.Update function, since the state gets reset each frame. It will not return true until the user has released all keys / buttons and pressed any key / buttons again. This does not detect touches. For touches, use Input.touchCount.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects if any key has been pressed down.    void Update()
    {
        if (Input.anyKeyDown)
        {
            Debug.Log("A key or mouse click has been detected");
        }
    }
}
```
