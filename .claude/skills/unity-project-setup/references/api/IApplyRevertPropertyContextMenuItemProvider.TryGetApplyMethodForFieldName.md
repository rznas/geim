<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IApplyRevertPropertyContextMenuItemProvider.TryGetApplyMethodForFieldName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| property | The property that the user is interacting with. |
| applyMethod | Assign the custom action to be called if the user selects the apply menu command. |

### Returns

**bool** True, if the apply menu should be shown for the property.

### Description

Extension hook for an optional property apply menu item.

Called as the context menu is being built to retrieve the method to be called (if any) when the user selects the 'apply' menu item. The boolean return value defines if an apply menu item is to be shown.
