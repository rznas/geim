<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-clipping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

What to do when the contents to be rendered is too large to fit within the area given.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints how is managed the text when the contents rendered
    // are too large to fir in the area given.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.clipping);
    }
}
```
