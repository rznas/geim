<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-active.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the keyboard visible or sliding into the position on the screen?

Use this property to bring previously hidden keyboard back on the screen.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Hides the keyboard if the device is facing down
    // and resumes input if the device is facing up.    TouchScreenKeyboard keyboard;    void Update()
    {
        if (keyboard != null)
        {
            if (Input.deviceOrientation == DeviceOrientation.FaceDown)
                keyboard.active = false;
            if (Input.deviceOrientation == DeviceOrientation.FaceUp)
                keyboard.active = true;
        }
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 10, 200, 32), "Open keyboard"))
            keyboard = TouchScreenKeyboard.Open("text");
    }
}
```
