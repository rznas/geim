<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the component is displayed normally.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the text color that button is using.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.normal.textColor);
    }
}
```
