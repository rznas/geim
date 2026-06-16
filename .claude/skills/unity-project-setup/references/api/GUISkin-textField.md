<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-textField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for GUI.TextField controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the textField style of the current GUISkin    GUIStyle style;
    string str = "A string...";    void OnGUI()
    {
        GUI.skin.textField = style;
        str = GUILayout.TextField(str);
    }
}
```
