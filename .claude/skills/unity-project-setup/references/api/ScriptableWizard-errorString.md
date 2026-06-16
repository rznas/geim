<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableWizard-errorString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to set the error text of the wizard.

Additional resources: ScriptableWizard.OnWizardUpdate


 *Error String on a ScriptableWizard window.*

```csharp
// Creates a simple Wizard window and prints an error
// string until you set the number to 5using UnityEngine;
using UnityEditor;public class ErrorString : ScriptableWizard
{
    public int number = 0;
    [MenuItem("Example/Show Error String")]
    static void CreateWindow()
    {
        ScriptableWizard.DisplayWizard("Error String example", typeof(ErrorString), "Close");
    }    void OnWizardUpdate()
    {
        helpString = "Set The number to 5";
        if (number != 5)
            errorString = "The number has to be set to 5!";
        else
            errorString = "";
    }
}
```
