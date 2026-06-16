<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetMouseButtonDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true during the frame the user pressed the given mouse button.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Call this function from the MonoBehaviour.Update function, since the state gets reset each frame. It will not return true until the user has released the mouse button and pressed it again. *button* values are 0 for left button, 1 for right button, 2 for the middle button.

```csharp
using UnityEngine;
using System.Collections;// Detects clicks from the mouse and prints a message
// depending on the click detected.public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
            Debug.Log("Pressed left-click.");        if (Input.GetMouseButtonDown(1))
            Debug.Log("Pressed right-click.");        if (Input.GetMouseButtonDown(2))
            Debug.Log("Pressed middle-click.");
    }
}
```
