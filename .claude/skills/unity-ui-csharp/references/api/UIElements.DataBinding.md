<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DataBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Binding type that enables data synchronization between a property of a data source and a property of a VisualElement.

### Properties

| Property | Description |
| --- | --- |
| bindingMode | Controls how this binding should be updated. The default value is BindingMode.TwoWay. |
| dataSource | Object that serves as a local source for the binding, and is particularly useful when the data source is not part of the UI hierarchy, such as a static localization table. If this object is null, the binding resolves the data source using its normal resolution method. |
| dataSourcePath | Path from the data source to the value. |
| dataSourceType | The possible data source types that can be assigned to the binding. |
| sourceToUiConverters | Returns the ConverterGroup used when trying to convert data from the data source to a UI property. |
| uiToSourceConverters | Returns the ConverterGroup used when trying to convert data from a UI property back to the data source. |

### Constructors

| Constructor | Description |
| --- | --- |
| DataBinding | Initializes and returns an instance of DataBinding. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyConverterGroupToSource | Applies a ConverterGroup to this binding that will be used when converting data between a UI control to a data source. |
| ApplyConverterGroupToUI | Applies a ConverterGroup to this binding that will be used when converting data between a data source to a UI control. |
| UpdateSource | Callback called to allow derived classes to update the data source with the resolved value when a change from the UI is detected. |
| UpdateUI | Callback called to allow derived classes to update the UI with the resolved value from the data source. |

### Inherited Members

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
