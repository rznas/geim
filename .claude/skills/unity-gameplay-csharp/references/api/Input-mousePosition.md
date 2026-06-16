<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-mousePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current mouse position in pixel coordinates. (Read Only).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Input.mousePosition is a Vector3 for compatibility with functions that have Vector3 arguments. The z component of the Vector3 is always 0.

The bottom-left of the screen or window is at (0, 0). The top-right of the screen or window is at (Screen.width, Screen.height).

Note: Input.mousePosition reports the position of the mouse even when it is not inside the Game View, such as when Cursor.lockState is set to CursorLockMode.None. When running in windowed mode with an unconfined cursor, position values smaller than 0 or greater than the screen dimensions (Screen.width,Screen.height) indicate that the mouse cursor is outside of the game window.

In the following example, the x and y coordinates of the mouse position are printed when the “Fire1” button is clicked.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            Vector3 mousePos = Input.mousePosition;
            {
                Debug.Log(mousePos.x);
                Debug.Log(mousePos.y);
            }
        }
    }
}
```
