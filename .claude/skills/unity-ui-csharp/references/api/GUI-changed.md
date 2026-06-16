<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI-changed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if any controls changed the value of the input data.

```csharp
// Draws a text field and when it gets modified prints a message
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string stringToEdit = "Modify me.";    void OnGUI()
    {
        // Make a text field that modifies stringToEdit.
        stringToEdit = GUI.TextField(new Rect(10, 10, 200, 20), stringToEdit, 25);        if (GUI.changed)
        {
            Debug.Log("Text field has changed.");
        }
    }
}
```
