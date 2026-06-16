<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISettings-cursorFlashSpeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The speed of text field cursor flashes.

This is how many flashes / second. If you set it to 0, flashing will be disabled. If you set it to -1, the flashing speed will match the system default of the end user.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    string str = "This is a string with \n two lines of text";    void OnGUI()
    {
        GUI.skin.settings.cursorFlashSpeed = 3;
        str = GUILayout.TextArea(str);
    }
}
```
