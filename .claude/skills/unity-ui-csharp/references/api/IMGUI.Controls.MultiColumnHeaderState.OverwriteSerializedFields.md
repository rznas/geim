<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeaderState.OverwriteSerializedFields.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | State that have serialized data to be transfered to the destination state. |
| destination | Destination state. |

### Description

Overwrites the seralized fields from the source state to the destination state.

Some of the fields in the MultiColumnHeader state are serializable so they can be preserved between assembly reloads and/or when restarting Unity. The non-serialized fields have to be reconstructed. After having reconstructed the state use this method to apply any serialized fields from a previous session. Ensure to check if the data can be overwritten using CanOverwriteSerializedFields

Additional resources: CanOverwriteSerializedFields.
