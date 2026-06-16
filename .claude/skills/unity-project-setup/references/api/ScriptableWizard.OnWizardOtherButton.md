<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableWizard.OnWizardOtherButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to provide an action when the user clicks on the other button.

This is the place where you can implement all the stuff that will be done if the user clicks the secondary option when calling DisplayWizard.

Additional resources: ScriptableWizard.DisplayWizard


 *ScriptableWizard with an "Other" button, in this case named "Info".*

```csharp
// Display a window showing the distance between two objects when clicking the Info button.using UnityEngine;
using UnityEditor;public class ScriptableWizardOnWizardOtherButton : ScriptableWizard
{
    public Transform firstObject = null;
    public Transform secondObject = null;    [MenuItem("Example/Show OnWizardOtherButton Usage")]
    static void CreateWindow()
    {
        ScriptableWizard.DisplayWizard("Click info to know the distance between the objects",
            typeof(ScriptableWizardOnWizardOtherButton), "Finish!", "Info");
    }    void OnWizardUpdate()
    {
        if (firstObject == null || secondObject == null)
        {
            isValid = false;
            errorString = "Select the objects you want to measure";
        }
        else
        {
            isValid = true;
            errorString = "";
        }
    }    // Called when you press the "Info" button.
    void OnWizardOtherButton()
    {
        float distanceObjs = Vector3.Distance(firstObject.position, secondObject.position);
        EditorUtility.DisplayDialog(
            "The distance between the objects is: " + distanceObjs + " Units",
            "",
            "OK");
    }    // Called when you press the "Finish!" button.
    void OnWizardCreate()
    {
    }
}
```
