<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.PasswordField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| password | Password to edit. The return value of this function should be assigned back to the string as shown in the example. |
| maskChar | Character to mask the password with. |
| maxLength | The maximum length of the string. If left out, the user can type for ever and ever. |
| style | The style to use. If left out, the `textField` style from the current GUISkin is used. |

### Returns

**string** The edited password.

### Description

Make a text field where the user can enter a password.

*Password field in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    string passwordToEdit = "My Password";    void OnGUI()
    {
        // Make a password field that modifies passwordToEdit.
        passwordToEdit = GUILayout.PasswordField(passwordToEdit, "*"[0], 25);
    }
}
```
