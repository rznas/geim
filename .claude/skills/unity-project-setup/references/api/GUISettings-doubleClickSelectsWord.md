<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISettings-doubleClickSelectsWord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should double-clicking select words in text fields.

By default is set to true.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    string str = "This is a string with \n two lines of text";    void OnGUI()
    {
        GUI.skin.settings.doubleClickSelectsWord = false;
        str = GUILayout.TextArea(str);
    }
}
```
