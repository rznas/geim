<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableWizard-helpString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to set the help text of the wizard.

Additional resources: ScriptableWizard.OnWizardUpdate


 *Help string on a ScriptableWizard window.*

```csharp
// Creates a simple Wizard window and prints the HelpString
// in the Wizard window.using UnityEngine;
using UnityEditor;public class HelpString : ScriptableWizard
{
    [MenuItem("Example/Show Help String")]
    static void CreateWindow()
    {
        ScriptableWizard.DisplayWizard("", typeof(HelpString), "Finish");
    }    void OnWizardUpdate()
    {
        helpString = "This string describes what the Scriptable Wizard does.";
    }
}
```
