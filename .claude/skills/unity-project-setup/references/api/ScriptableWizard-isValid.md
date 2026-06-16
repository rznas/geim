<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableWizard-isValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to enable and disable the wizard create button, so that the user can not click it.

Additional resources: ScriptableWizard.OnWizardUpdate


 *The finish button gets disabled until the user sets the number to 5.*

```csharp
// Asks the user to set the var "Number" to 5, if is not set to 5
// the "Finish" button will not be reachableusing UnityEngine;
using UnityEditor;public class isValidScriptableWizard : ScriptableWizard
{
    public int number = 0;
    [MenuItem("Example/Show isValid Usage")]
    static void CreateWindow()
    {
        ScriptableWizard.DisplayWizard(
            "isValid boolean example",
            typeof(isValidScriptableWizard),
            "Finish");
    }    void OnWizardUpdate()
    {
        helpString = "Set The number to 5 and press finish";
        if (number != 5)
        {
            errorString = "The number has to be set to 5!";
            isValid = false;
        }
        else
        {
            errorString = "";
            isValid = true;
        }
    }
}
```
