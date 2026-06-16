<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-fixedHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If non-0, any GUI elements rendered with this style will have the height specified here.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the value of fixedHeight.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.fixedHeight);
    }
}
```
