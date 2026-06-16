<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.DisplayDialog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The title of the dialog box. If left null, defaults to "Unity". |
| message | The text of the message. |
| ok | Label displayed on the OK dialog button. |
| cancel | Label displayed on the Cancel dialog button. |

### Returns

**bool** Returns `true` if the user clicks the OK button. Returns `false` otherwise.

### Description

This method displays a modal dialog.

Use it for displaying message boxes in the Editor. If `message` is null or whitespace, an `ArgumentNullException` is thrown. If `messageText` is longer than 512 characters, it is truncated and the full message is logged to the console in markdown format.

`ok` and `cancel` are labels to be displayed on the dialog buttons. If `cancel` is empty (the default), then only one button is displayed. DisplayDialog returns `true` if `ok` button is pressed. If any button's text is longer than 64 characters, an `ArgumentException` is thrown. 

For dialog boxes that might be shown repeatedly, consider using an overload of this method that takes a DialogOptOutDecisionType as described in the below the code example.


 *Dialog box that has one button.*


 *Dialog box that has two buttons.*

**Note:** `EditorUtility.DisplayDialog` and `EditorUtility.DisplayDialogComplex` are kept for backwards compatibilty. For new code, it is strongly recommended to use one of the new EditorDialog methods.

Additional resources:

- EditorDialog.DisplayAlertDialog
- EditorDialog.DisplayAlertDialogWithOptOut
- EditorDialog.DisplayDecisionDialog
- EditorDialog.DisplayDecisionDialogWithOptOut
- EditorDialog.DisplayComplexDecisionDialog
- EditorDialog.DisplayComplexDecisionDialogWithOptOut.

### Parameters

| Parameter | Description |
| --- | --- |
| title | The title of the dialog box. If left null, defaults to "Unity". |
| message | The text of the message. |
| ok | Label displayed on the OK dialog button. |
| cancel | Label displayed on the Cancel dialog button. |
| dialogOptOutDecisionType | Where the result is stored if the user opts out of the dialog by checking the box. |
| dialogOptOutDecisionStorageKey | The key to use for storing the opt-out decision. |

### Returns

**void** `true` if the user clicks the `ok` button, or previously opted out. Returns `false` if the user cancels or closes the dialog without making a decision.

### Description

This method displays a modal dialog that lets the user opt-out of being shown the current dialog box again.

Use this method to display dialog boxes in the Editor that might be shown repeatedly. Choose which EditorUtility.DialogOptOutDecisionType to use based on how often you think users encounter this message and how often you want to remind them of it.

If the user opts-out of seeing the dialog box associated with the provided `dialogOptOutDecisionStorageKey`, Unity doesn't show the dialog box and this method immediately returns `true`.

`ok` and `cancel` are labels to be displayed on the dialog buttons. If `cancel` is empty (the default), then only one button is displayed. DisplayDialog returns `true` if `ok` button is pressed. If any button's text is longer than 64 characters, an `ArgumentException` is thrown. 

If `dialogOptOutDecisionStorageKey` is not a valid XML tag, or more than 127 characters long, an <see cref="ArgumentException"/> is thrown. Care should be taken to ensure that the key is unique to the dialog box being displayed to prevent conflicts. The decision is only stored if the user checks the opt-out checkbox and clicks the Yes button. The user can reset the option in user preferences.

 
 *Dialog box that can opt out for this session.*


 *Dialog box that can be opted out more permanently.*

**Note:** `EditorUtility.DisplayDialog` and `EditorUtility.DisplayDialogComplex` are kept for backwards compatibilty. For new code, it is strongly recommended to use one of the new EditorDialog methods.

Additional resources:

- EditorDialog.DisplayAlertDialog
- EditorDialog.DisplayAlertDialogWithOptOut
- EditorDialog.DisplayDecisionDialog
- EditorDialog.DisplayDecisionDialogWithOptOut
- EditorDialog.DisplayComplexDecisionDialog
- EditorDialog.DisplayComplexDecisionDialogWithOptOut.
