<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-wordWrap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the text be wordwrapped?

This will cause any text contrained to be wordwrapped to fit within the width of a control.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUI.skin.button.wordWrap = true;
    }
}
```
