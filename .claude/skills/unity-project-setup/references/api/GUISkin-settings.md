<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generic settings for how controls should behave with this skin.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Sets the selection color to cyan    string str = "This is a string with\ntwo lines of text";    void OnGUI()
    {
        GUI.skin.settings.selectionColor = Color.cyan;
        str = GUILayout.TextArea(str);
    }
}
```
