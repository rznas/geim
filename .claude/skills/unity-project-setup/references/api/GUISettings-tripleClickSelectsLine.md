<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISettings-tripleClickSelectsLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should triple-clicking select whole text in text fields.

Bu default is set to true.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Disables line selecting with triple click on the text area
    string str = "This is a string with \n two lines of text";    void OnGUI()
    {
        GUI.skin.settings.tripleClickSelectsLine = false;
        str = GUILayout.TextArea(str);
    }
}
```
