<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeaderState.CanOverwriteSerializedFields.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | State that have serialized data to be transfered to the destination state. |
| destination | Destination state. |

### Returns

**bool** Returns true if the source state have the same number of columns as the destination state.

### Description

Checks if the source state can transfer its serialized data to the destination state.

Some of the fields in the MultiColumnHeader state are serializable so they can be preserved between assembly reloads and/or when restarting Unity. The non-serialized fields have to be reconstructed. After having reconstructed the state use this method before calling OverwriteSerializedFields to apply any serialized fields from a previous session.

Additional resources: OverwriteSerializedFields.
