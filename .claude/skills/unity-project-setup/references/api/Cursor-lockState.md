<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cursor-lockState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the hardware pointer is locked to the center of the view, constrained to the window, or not constrained at all.

A locked cursor is positioned in the center of the view and cannot be moved. The cursor is invisible in this state, regardless of the value of Cursor.visible. **Note**: Locking the cursor prevents the user from interacting with UI elements.

A confined cursor behaves normally, but it is confined to the view. For example, if the application is running in a window, then a confined cursor cannot leave that window. The confined cursor mode is only supported on Windows and Linux standalone builds. **Important:** In Linux Editor environments that use Wayland, the mouse might become unlocked if the main thread is blocked for too long.

The recommended best practice is to only lock or confine the cursor because of a user's action, such as pressing a button.

The cursor state can be changed by the operating system or the Editor. For example, check the state of the cursor when the application regains focus or the state of a game changes to reveal a UI.

In the Editor, the cursor loses focus in Game mode when you press Escape or when you switch an application. In the Standalone Player, you have full control over the mouse cursor, but if you switch applications, the cursor goes out of focus.

```csharp
using UnityEngine;public class CursorLockExample : MonoBehaviour
{
    void Update()
    {
        //Press the space bar to apply no locking to the Cursor
        if (Input.GetKey(KeyCode.Space))
            Cursor.lockState = CursorLockMode.None;
    }    void OnGUI()
    {
        //Press this button to lock the Cursor
        if (GUI.Button(new Rect(0, 0, 100, 50), "Lock Cursor"))
        {
            Cursor.lockState = CursorLockMode.Locked;
        }        //Press this button to confine the Cursor within the screen
        if (GUI.Button(new Rect(125, 0, 100, 50), "Confine Cursor"))
        {
            Cursor.lockState = CursorLockMode.Confined;
        }
    }
}
```
