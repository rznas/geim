<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-none.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shortcut for an empty GUIStyle.

This style contains no decoration and just renders everything in the default font.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        // Make a button with no decoration
        GUI.Button(new Rect(0, 0, 250, 100), "Basic Button", GUIStyle.none);
    }
}
```
