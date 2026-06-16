<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.PasswordField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the password field. |
| label | Optional label to display in front of the password field. |
| password | The password to edit. |
| style | Optional GUIStyle. |

### Returns

**string** The password entered by the user.

### Description

Makes a text field where the user can enter a password.

This works just like GUI.PasswordField, but correctly responds to select all, etc. in the editor, and it can have an optional label in front.


 *Password Field in an Editor Window.*

```csharp
using UnityEngine;
using UnityEditor;// Editor Script that creates a password field and lets you visualize what have you
// typed in a label.class EditorGUIPasswordField : EditorWindow
{
    string text = "Some text here";    [MenuItem("Examples/Editor Password field usage")]
    static void Init()
    {
        EditorWindow window = GetWindow<EditorGUIPasswordField>();
        window.Show();
    }    void OnGUI()
    {
        text = EditorGUI.PasswordField(
            new Rect(3, 3, position.width - 6, 20),
            "Type Something:",
            text);        EditorGUI.LabelField(
            new Rect(3, 25, position.width - 5, 20),
            "Written Text:",
            text);
    }
}
```
