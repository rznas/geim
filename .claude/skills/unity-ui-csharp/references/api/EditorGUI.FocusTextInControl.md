<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.FocusTextInControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name set using GUI.SetNextControlName. |

### Description

Move keyboard focus to a named text field and begin editing of the content.

In Editor GUI, text fields can have keyboard focus without the text being edited. For example you may switch focus between text fields or other controls by using the up and down arrow keys. Once you click inside the text field, editing of the text itself begins and the arrow keys are then used to navigate the text content. EditorGUI.FocusTextInControl is like GUI.FocusControl in that it gives keyboard focus to a control, but it also begins editing of the text itself.

Additional resources: GUI.SetNextControlName, GUI.GetNameOfFocusedControl.

```csharp
using UnityEngine;
using UnityEditor;public class Example : EditorWindow
{
    // When pressed the button, selects the "username" Textfield.
    string username = "username";
    string pwd = "a pwd";
    void OnInspectorGUI()
    {
        // Set the internal name of the textfield
        GUI.SetNextControlName("MyTextField");        // Make the actual text field.
        username = EditorGUI.TextField(new Rect(10, 10, 100, 20), username);
        pwd = EditorGUI.TextField(new Rect(10, 40, 100, 20), pwd);        // If the user presses this button, keyboard focus will move.
        if (GUI.Button(new Rect(10, 70, 80, 20), "Move Focus"))
        {
            EditorGUI.FocusTextInControl("MyTextField");
        }
    }
}
```
