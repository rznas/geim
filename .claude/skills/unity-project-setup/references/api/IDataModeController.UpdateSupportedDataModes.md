<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IDataModeController.UpdateSupportedDataModes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| supportedDataMode | A list of the supported DataModes. |
| preferredDataMode | Preferred data mode to use given the current context when the DataMode switcher UI is set to Automatic. |

### Description

Updates the list of DataModes that the EditorWindow supports, and sets the preferred DataMode to use when the DataMode switcher UI is set to Automatic.

If the DataMode switcher UI is currently set to Automatic, the Editor window also changes to that preferred DataMode.
