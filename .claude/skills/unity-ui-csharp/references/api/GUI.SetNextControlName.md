<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.SetNextControlName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the name of the next control.

This makes the following control be registered with a given name.

Additional resources: GetNameOfFocusedControl, FocusControl.

```csharp
// Sets the login textfield with "user".  If it is selected and the user
// presses enter, it prints Loginusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string login = "username";
    public string login2 = "no action here";    void OnGUI()
    {
        GUI.SetNextControlName("user");
        login = GUI.TextField(new Rect(10, 10, 130, 20), login);        login2 = GUI.TextField(new Rect(10, 40, 130, 20), login2);
        if (Event.current.Equals(Event.KeyboardEvent("return")) && GUI.GetNameOfFocusedControl() == "user")
            Debug.Log("Login");        if (GUI.Button(new Rect(150, 10, 50, 20), "Login"))
            Debug.Log("Login");
    }
}
```
