<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorDialog.DisplayComplexDecisionDialog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| titleText | The title of the dialog box. If left null, defaults to "Unity". |
| messageText | The message to display in the dialog box. |
| defaultButtonText | The text to display on the default button. If left null, it defaults to "Yes". |
| altButtonText | The text to display on the alternate button. If left null, it defaults to "No". |
| cancelButtonText | The text to display on the cancel button. If left null, it defaults to "Cancel". |
| iconType | The icon to display in the dialog box. Defaults to DialogIconType.Warning. |

### Returns

**DialogResult** The result of the dialog box. Returns DialogResult.Cancel if the user clicked the cancel button, DialogResult.DefaultAction; if the user clicked the default button, or DialogResult.AlternateAction if the user clicked the alternate button.

### Description

Displays a complex decision dialog box with a title, icon, message, and three buttons.

If `messageText` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

If any button's text is longer than 64 characters, an `ArgumentException` is thrown.

If the user presses the enter key (return key on macOS), the default button is clicked. The alternate button is for additional actions, or to provide a different choice than the default button. The cancel button closes the dialog box without taking any further actions. If the user presses the escape key or closes the dialog, the cancel button is clicked. On macOS, the orientation of the buttons might be horizontal or vertical depending on the length of the message. Additionally, if the layout is horizontal, the button layout is different from Windows or Linux, with the default button on the right and the alternate button on the far left. 

The following example demonstrates how to display a complex decision dialog box with a warning icon, a title, a message, and Yes, No, and Cancel buttons:

```csharp
using UnityEditor;
using UnityEngine;namespace Examples
{
    public class DisplayComplexDecisionDialogExamples : MonoBehaviour
    {
        [MenuItem("Window/EditorDialog Example/DisplayComplexDecisionDialog with all parameters specified")]
        public static void DisplayComplexDecisionDialogExample()
        {
            DialogResult userResponse = EditorDialog.DisplayComplexDecisionDialog(
                "Unity - Custom Title",
                "This is a test of the EditorDialog API. Please select an option below.",
                "Option",
                "Less Common Option",
                "Go Back",
                DialogIconType.Error);            Debug.Log(userResponse);
        }        [MenuItem("Window/EditorDialog Example/DisplayComplexDecisionDialog with defaults")]
        public static void DisplayComplexDecisionDialogSimpleExample()
        {
            DialogResult userResponse = EditorDialog.DisplayComplexDecisionDialog(null, "This is a test of the EditorDialog API with defaults. Please select an option below.", null, null, null);
            Debug.Log(userResponse);
        }
    }
}
```

Produces the following dialog boxes on Windows 11 and macOS:
 
 .
