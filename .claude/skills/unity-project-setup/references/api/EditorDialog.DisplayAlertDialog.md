<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorDialog.DisplayAlertDialog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| titleText | The title of the dialog box. If left null, defaults to "Unity". |
| messageText | The message to display in the dialog box. |
| buttonText | The text to display on the button. If left null, defaults to "OK". |
| iconType | The icon to display in the dialog box. Defaults to DialogIconType.Warning. |

### Description

Displays a simple alert dialog box with a title, an icon, a message, and a single button.

If `messageText` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

If `buttonText` is longer than 64 characters, an `ArgumentException` is thrown. The following example demonstrates how to display a simple alert dialog box with a warning icon, a title, a message, and an OK button.

```csharp
using UnityEditor;
using UnityEngine;namespace Examples
{
    public class DisplayAlertDialogExamples : MonoBehaviour
    {
        [MenuItem("Window/EditorDialog Example/DisplayAlertDialog with all parameters specified")]
        public static void DisplayAlertDialogExample()
        {
            EditorDialog.DisplayAlertDialog(
                "Unity - Custom Title",
                "This is a test of the EditorDialog API",
                "Custom Button",
                DialogIconType.Info);
        }        [MenuItem("Window/EditorDialog Example/DisplayAlertDialog with defaults")]
        public static void DisplayAlertDialogSimpleExample()
        {
            EditorDialog.DisplayAlertDialog(null, "This is a test of the EditorDialog API with defaults.", null);
        }
    }
}
```

Produces the following dialog boxes on Windows 11:
 
 .
