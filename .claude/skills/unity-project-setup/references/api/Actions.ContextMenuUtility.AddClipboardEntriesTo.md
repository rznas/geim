<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.ContextMenuUtility.AddClipboardEntriesTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| menu | The Scene view context menu to add a clipboard operations to. |
| cutEnabled | Whether to enable the Cut operation in the Scene view context menu. When Cut is disabled, it is greyed out in the Scene view context menu. |
| copyEnabled | Whether to enable the Copy operation in the Scene view context menu. If Copy is disabled, it is greyed out in the Scene view context menu. |
| pasteEnabled | Whether to enable the Paste operation in the Scene view context menu. If Paste is disabled, it is greyed out in the Scene view context menu. |
| duplicateEnabled | Whether to enable the Duplicate operation in the Scene view context menu. If Duplicate is disabled, it is greyed out in the Scene view context menu. |
| deleteEnabled | Whether to enable the Delete operation in the Scene view context menu. If Delete is disabled, it is greyed out in the Scene view context menu. |

### Description

Adds clipboard operations to the Scene view context menu.

By default, the Cut, Copy, Duplicate, and Delete operations are greyed out in the Scene view context menu if you do not have a GameObject selected in the Scene. The Paste operation is greyed out if the clipboard is empty. The method overload provides additional control over whether these operations are greyed out.
