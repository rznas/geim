<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IDataModeController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface with which any EditorWindow can interact with DataMode functionalities. To obtain an instance, use EditorWindow.dataModeController.

This interface displays a switch in the docking area when the window is visible and has more than one supported DataModes.

### Properties

| Property | Description |
| --- | --- |
| dataMode | Returns the DataMode currently active for the EditorWindow that owns this instance of IDataModeController. |

### Public Methods

| Method | Description |
| --- | --- |
| TryChangeDataMode | Requests a DataMode change for the EditorWindow. |
| UpdateSupportedDataModes | Updates the list of DataModes that the EditorWindow supports, and sets the preferred DataMode to use when the DataMode switcher UI is set to Automatic. |

### Events

| Event | Description |
| --- | --- |
| dataModeChanged | Event for subscribing to DataMode changes. |
