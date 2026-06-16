<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.FocusControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name set using SetNextControlName. |

### Description

Move keyboard focus to a named control.

Additional resources: SetNextControlName, GetNameOfFocusedControl.

For focusing text in Editor GUI text fields, see EditorGUI.FocusTextInControl.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // When pressed the button, selects the "username" Textfield.
    public string username = "username";
    public string pwd = "a pwd";    void OnGUI()
    {
        // Set the internal name of the textfield
        GUI.SetNextControlName("MyTextField");        // Make the actual text field.
        username = GUI.TextField(new Rect(10, 10, 100, 20), username);
        pwd = GUI.TextField(new Rect(10, 40, 100, 20), pwd);        // If the user presses this button, keyboard focus will move.
        if (GUI.Button(new Rect(10, 70, 80, 20), "Move Focus"))
            GUI.FocusControl("MyTextField");
    }
}
```
