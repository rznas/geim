<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-onFocused.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the element has keyboard and is turned on.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUI.skin.button.onFocused.textColor = Color.green;
    }
}
```
