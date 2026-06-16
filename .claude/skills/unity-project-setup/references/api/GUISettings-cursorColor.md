<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISettings-cursorColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The color of the cursor in text fields.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the cursor color to Cyan.
    string str = "This is a string with \n two lines of text";    void OnGUI()
    {
        GUI.skin.settings.cursorColor = Color.cyan;
        str = GUILayout.TextArea(str);
    }
}
```
