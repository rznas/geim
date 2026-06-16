<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-focused.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the element has keyboard focus.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUI.skin.button.focused.textColor = Color.blue;
    }
}
```
