<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-contentOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Pixel offset to apply to the content of this GUIstyle.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the value of contentOffset.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.contentOffset);
    }
}
```
