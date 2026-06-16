<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility-hotControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The controlID of the current hot control.

The hot control is one that is temporarily active. When the user mousedown's on a button, it becomes hot. 
 No other controls are allowed to respond to mouse events while some other control is hot.
 once the user mouseup's, the control sets `hotControl` to 0 in order to indicate that other controls can now respond to user input.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Click on the button to see the id    void OnGUI()
    {
        GUILayout.Button("Press Me!");
        Debug.Log("id: " + GUIUtility.hotControl);
    }
}
```
