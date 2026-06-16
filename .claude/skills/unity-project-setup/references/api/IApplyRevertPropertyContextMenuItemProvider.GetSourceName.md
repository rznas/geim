<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IApplyRevertPropertyContextMenuItemProvider.GetSourceName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| comp | The component of interest. |

### Returns

**string** A string containing the name.

### Description

Returns the component specific name to be used in the apply menu item.

The component specific name is shown in the apply menu item texts to describe the object specific name of the target of the operation: the apply item text is defined as "Apply override to '{SourceName}' {SourceTerm}".
