<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CursorLockMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How the cursor should behave.

These are various modes that control the behaviour of the Cursor. A default cursor must be set in **PlayerSettings** > **Default Cursor**.

```csharp
//This script makes Buttons that control the Cursor's lock state. Note that the Confined mode only works on Windows and Linux Standalone platform build.using UnityEngine;public class Example : MonoBehaviour
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

### Properties

| Property | Description |
| --- | --- |
| None | Cursor behavior is unmodified. |
| Locked | Locks the cursor to the center of the Game view. |
| Confined | Confine cursor to the game window. |
