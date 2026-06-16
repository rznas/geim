<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyleState-textColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The text color used by GUI elements in this state.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Sets the text color to yellow of customStyles[0] when an
    // element is turned on and pressed down
    void OnGUI()
    {
        if (GUI.skin.customStyles.Length > 0)
        {
            GUI.skin.customStyles[0].onActive.textColor = Color.yellow;
        }
    }
}
```
