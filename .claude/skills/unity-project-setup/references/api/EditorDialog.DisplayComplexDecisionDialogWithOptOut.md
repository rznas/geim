<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorDialog.DisplayComplexDecisionDialogWithOptOut.html
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
| optOutDecisionType | Where the result is stored if the user opts out of the dialog, which they can do if they enable **Don't ask again** in the dialog box. |
| optOutKey | The key to use to store the opt-out decision. |
| iconType | The icon to display in the dialog box. Defaults to DialogIconType.Warning. |

### Returns

**DialogResult** The result of the dialog box or the stored decision. Returns DialogResult.Cancel if the user clicked the cancel button, DialogResult.DefaultAction if the user clicked the default button, or DialogResult.AlternateAction if the user clicked the alternate button.

### Description

Displays a complex decision dialog box with a title, icon, message, three buttons, and an opt-out checkbox.

If `messageText` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

If any button's text is longer than 64 characters, an `ArgumentException` is thrown.

If the user presses the enter key (return key on macOS), the default button is clicked. The alternate button is for additional actions, or to provide a different choice than the default button. The cancel button closes the dialog box without taking any further actions. If the user presses the escape key or closes the dialog, the cancel button is clicked. On macOS, the orientation of the buttons might be horizontal or vertical depending on the length of the message. Additionally, if the layout is horizontal, the button layout is different from Windows or Linux, with the default button on the right and the alternate button on the far left. 

If `optOutKey` is not a valid XML tag, or more than 127 characters long, an `ArgumentException` is thrown. Care should be taken to ensure that the key is unique to the dialog box being displayed to prevent conflicts. The API takes care of the stored decision, so you do not need to check the value of the key before displaying the dialog box. Users can reset the decision in Editor Preferences. The decision is not stored if the user clicks the cancel button.

The following example demonstrates how to display a complex decision dialog box with a warning icon, a title, a message, Yes, No, and Cancel buttons, and an opt-out checkbox.

```csharp
using UnityEditor;
using UnityEngine;namespace Examples
{
    public class DisplayComplexDecisionDialogWithOptOutExample : MonoBehaviour
    {
        [MenuItem("Window/EditorDialog Example/DisplayComplexDecisionDialogWithOptOut")]
        public static void DisplayAlertDialogExample()
        {
            DialogResult userResponse = EditorDialog.DisplayComplexDecisionDialogWithOptOut(
                null,
                @"This is a test of the EditorDialog API.If you check the box and select 'Yes' or 'No', you will not see this dialog again until you restart the Editor.",
                null,
                null,
                null,
                DialogOptOutDecisionType.ForThisSession,
                "ComplexDecision",
                DialogIconType.Info);            Debug.Log(userResponse);
        }
    }
}
```

Produces the following dialog box on macOS:
 .
