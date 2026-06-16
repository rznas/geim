<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IApplyRevertPropertyContextMenuItemProvider.TryGetRevertMethodForFieldName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| revertMethod | Assign the custom action to be called if the user selects the revert menu command. |
| property | The property that the user is interacting with. |

### Returns

**bool** True, if the revert menu should be shown for the property.

### Description

Extension hook for an optional property revert menu item.

Called as the context menu is being built to retrieve the method to be called (if any) when the user select the 'revert' menu item. The boolean return value defines if a revert menu item is to be shown.
