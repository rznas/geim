<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorDialog.DisplayDecisionDialogWithOptOut.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| titleText | The title of the dialog box. If left null, defaults to "Unity". |
| messageText | The message to display in the dialog box. |
| yesButtonText | The text to display on the Yes button. If left null, it defaults to "Yes". |
| noButtonText | The text to display on the No button. If left null, it defaults to "No". |
| optOutDecisionType | Where the result is stored if the user opts out of the dialog, which they can do if they enable **Don't ask again** in the dialog box. |
| optOutKey | The key to use to store the opt-out decision. |
| iconType | The icon to display in the dialog box. Defaults to DialogIconType.Warning. |

### Returns

**bool** Returns `true` if the user clicked the Yes button or previously opted out, `false` if the user clicked the No button.

### Description

Displays a decision dialog box with a title, icon, message, two buttons, and an opt-out checkbox.

If `messageText` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

If any button's text is longer than 64 characters, an `ArgumentException` is thrown.

The default button is the Yes button. If the user presses the enter key (return key on macOS), the Yes button is clicked. The other button is the No button. If the user presses the escape key or closes the dialog, the No button is clicked. On macOS, the orientation of the buttons might be horizontal or vertical depending on the length of the message.

If `optOutKey` is not a valid XML tag, or more than 127 characters long, an `ArgumentException` is thrown. Care should be taken to ensure that the key is unique to the dialog box being displayed to prevent conflicts. The API takes care of the stored decision, so you do not need to check the value of the key before displaying the dialog box. Users can reset the decision in Editor Preferences. The decision is only stored if the user checks the opt-out checkbox and clicks the Yes button.

The following example demonstrates how to display a decision dialog box with a warning icon, a title, a message, Yes and No buttons, and an opt-out checkbox.

```csharp
using UnityEditor;
using UnityEngine;namespace Examples
{
    public class DisplayDecisionDialogWithOptOutExample : MonoBehaviour
    {
        [MenuItem("Window/EditorDialog Example/DisplayDecisionDialogWithOptOut")]
        public static void DisplayDecisionDialogExample()
        {
            bool userResponse = EditorDialog.DisplayDecisionDialogWithOptOut(
                "Unity - Example Decision Opt Out",
                @"This is a test of the EditorDialog API.If you check the box and select 'Yes', you will not see this dialog again unless you reset it in the options.",
                null,
                null,
                DialogOptOutDecisionType.ForThisUser,
                "ExampleDecisionOptOut");            Debug.Log(userResponse);
        }
    }
}
```

Produces the following dialog box on macOS:
 .
