<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.GetNameOfFocusedControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the name of named control that has focus.

Control names are set up by using SetNextControlName. When a named control has focus, this function will return its name. If no control has focus or the focused control has no name set, an empty string will be returned instead.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string login = "username";
    public string login2 = "no action here";    void OnGUI()
    {
        GUI.SetNextControlName("user");
        login = GUI.TextField(new Rect(10, 10, 130, 20), login);        login2 = GUI.TextField(new Rect(10, 40, 130, 20), login2);
        if (Event.current.isKey && Event.current.keyCode == KeyCode.Return && GUI.GetNameOfFocusedControl() == "user")
            Debug.Log("Login");        if (GUI.Button(new Rect(150, 10, 50, 20), "Login"))
            Debug.Log("Login");
    }
}
```

Additional resources: SetNextControlName, FocusControl.
