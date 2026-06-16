<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingLogLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to change the log level for warnings that occur during the update of data bindings.

This option can be changed using Binding.SetGlobalLogLevel or Binding.SetPanelLogLevel. Changing the global level won't change the log level of a panel if it already has an override.

### Properties

| Property | Description |
| --- | --- |
| None | Never log warnings. |
| Once | Log warnings only once when the result of the binding changes. |
| All | Log warnings to the console when a binding is updated. |
