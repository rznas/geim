<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility-keyboardControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The controlID of the control that has keyboard focus.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Click on the text field to see the id of the control.    string str = "A String!";
    void OnGUI()
    {
        str = GUILayout.TextField(str, 10);
        Debug.Log("id: " + GUIUtility.keyboardControl);
    }
}
```
