<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-textArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for GUI.TextArea controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the textArea style of the current GUISkin    GUIStyle style;
    string str = "A string...\nWith two lines.";    void OnGUI()
    {
        GUI.skin.textArea = style;
        str = GUILayout.TextArea(str);
    }
}
```
