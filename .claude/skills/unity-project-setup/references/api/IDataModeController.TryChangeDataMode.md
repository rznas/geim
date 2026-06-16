<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IDataModeController.TryChangeDataMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| newDataMode | The DataMode to which the Editor window should change. |

### Returns

**bool** Whether current Editor window has changed to the requested DataMode.

### Description

Requests a DataMode change for the EditorWindow.

If the DataMode isn't supported or if the DataMode switcher UI isn't set to Automatic, the change request won't work.
