<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorDialog.DisplayAlertDialogWithOptOut.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| titleText | The title of the dialog box. If left null, defaults to "Unity". |
| messageText | The message to display in the dialog box. |
| buttonText | The text to display on the button. If left null, defaults to "OK". |
| optOutDecisionType | Where the result is stored if the user opts out of the dialog, which they can do if they enable **Don't ask again** in the dialog box. |
| optOutKey | The key to use to store the opt-out decision. |
| iconType | The icon to display in the dialog box. Defaults to DialogIconType.Warning. |

### Description

Displays a simple alert dialog box with a title, icon, message, a button, and an opt-out checkbox.

If `messageText` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

If `buttonText` is longer than 64 characters, an `ArgumentException` is thrown.

If `optOutKey` is not a valid XML tag, or more than 127 characters long, an `ArgumentException` is thrown. Care should be taken to ensure that the key is unique to the dialog box being displayed to prevent conflicts. The API takes care of the stored decision, so you do not need to check the value of the key before displaying the dialog box. Users can reset the decision in Editor Preferences.

The following example demonstrates how to display a simple alert dialog box with a warning icon, a title, a message, and an OK button.

```csharp
using UnityEditor;
using UnityEngine;namespace Examples
{
    public class DisplayAlertDialogWithOptOutExample : MonoBehaviour
    {
        [MenuItem("Window/EditorDialog Example/DisplayAlertDialogWithOptOut")]
        public static void DisplayAlertDialogExample()
        {
            EditorDialog.DisplayAlertDialogWithOptOut(
                "Unity - Example Alert Opt Out",
                "This is a test of the EditorDialog API.",
                "Custom Button",
                DialogOptOutDecisionType.ForThisUser,
                "ExampleAlertOptOut",
                DialogIconType.Info);
        }
    }
}
```

Produces the following dialog box on Windows 11:
 .
