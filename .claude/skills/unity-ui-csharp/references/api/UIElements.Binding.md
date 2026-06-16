<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Binding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for defining a binding.

### Properties

| Property | Description |
| --- | --- |
| isDirty | When set to true, the binding instance updates during the next update cycle. When set to false, the binding instance updates only if a change is detected. |
| updateTrigger | When set to BindingUpdateTrigger.EveryUpdate, the binding instance updates in every update, regardless of the data source version. |

### Public Methods

| Method | Description |
| --- | --- |
| MarkDirty | Notifies the binding system to process this binding. |
| OnActivated | Called when the binding becomes active for a specific VisualElement. |
| OnDataSourceChanged | Called when the resolved data source of a binding changes. |
| OnDeactivated | Called when the binding is no longer active for a specific VisualElement. |

### Static Methods

| Method | Description |
| --- | --- |
| GetGlobalLogLevel | Gets the global log level for all binding failures. |
| GetPanelLogLevel | Gets the log level for binding failures on a panel. |
| ResetPanelLogLevel | Resets the log level for binding failures on a panel to use the global setting. |
| SetGlobalLogLevel | Sets the log level for all binding failures. |
| SetPanelLogLevel | Sets the log level for binding failures on a panel. |
