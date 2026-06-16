<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.DisplayDialogComplex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The title of the dialog box. If left null, defaults to "Unity". |
| message | Purpose for the dialog. |
| ok | Dialog function chosen. |
| cancel | Close dialog with no operation. |
| alt | Choose alternative dialog purpose. |

### Returns

**int** Returns the ID of a button. IDs are 0, 1, or 2 and they correspond to the `ok`, `cancel` and `alt` buttons respectively. An ID of 1, which corresponds to `cancel`, returns if the dialog is closed or the user presses the Escape key.

### Description

Displays a modal dialog with three buttons.

Use it for displaying message boxes in the Editor. If `message` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

`DisplayDialogComplex` is similar to DisplayDialog. This `DisplayDialogComplex` member shows a dialog with three buttons. These buttons represent `ok`, `cancel` and `alt`. `DisplayDialogComplex` returns an integer 0, 1 or 2 corresponding to the `ok`, `cancel` and `alt` buttons.

The `ok` button is the default option, and can also be activated by pressing Enter.

The `cancel` button is considered the "cancel" button and should usually not perform any action. On a PC, this can also be activated by pressing Escape or by clicking the dialog window close button. On a Mac, this can also be activated by pressing Escape, provided the button is called "Cancel".

The `alt` button allows you to provide the user with an alternative choice in addition to the `ok` and `cancel` buttons. This button does not have a fixed keyboard shortcut.

If any button's text is longer than 64 characters, an `ArgumentException` is thrown. 

On macOS, the orientation of the buttons may be horizontal or vertical depending on the length of the message. Additionally, if the layout is horizontal, the button layout is different from Windows or Linux, with the default button on the right and the alternate button on the far left.

**Note:** `EditorUtility.DisplayDialog` and `EditorUtility.DisplayDialogComplex` are kept for backwards compatibilty. For new code, it is strongly recommended to use one of the new EditorDialog methods.

Additional resources:

- EditorDialog.DisplayAlertDialog
- EditorDialog.DisplayAlertDialogWithOptOut
- EditorDialog.DisplayDecisionDialog
- EditorDialog.DisplayDecisionDialogWithOptOut
- EditorDialog.DisplayComplexDecisionDialog
- EditorDialog.DisplayComplexDecisionDialogWithOptOut

// UPDATE *macOS display dialog buttons for the example below.*



 // UPDATE *PC display dialog buttons for the example below.*
