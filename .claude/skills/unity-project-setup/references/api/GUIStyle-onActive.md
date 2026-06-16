<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-onActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the element is turned on and pressed down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Sets the text color of button to yellow when an
    // element is turned on and pressed down.
    void OnGUI()
    {
        GUI.skin.button.onActive.textColor = Color.yellow;
    }
}
```
