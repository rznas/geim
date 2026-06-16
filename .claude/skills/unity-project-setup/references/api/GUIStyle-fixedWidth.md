<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-fixedWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If non-0, any GUI elements rendered with this style will have the width specified here.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the value of fixedWidth.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.fixedWidth);
    }
}
```
