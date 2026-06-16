<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetMouseButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns whether the given mouse button is held down.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

The *button* values are: 0 for the left button, 1 for the right button, 2 for the middle button. The return is `true` when the mouse button is pressed down, and `false` when released.

```csharp
using UnityEngine;
using System.Collections;// Detects clicks from the mouse and prints a message
// depending on the click detected.public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            Debug.Log("The left mouse button is being held down.");
        }        if (Input.GetMouseButton(1))
        {
            Debug.Log("The right mouse button is being held down.");
        }        if (Input.GetMouseButton(2))
        {
            Debug.Log("The middle mouse button is being held down.");
        }
    }
}
```
