<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Binding mode to control how a binding is updated.

To let the data binding system know that the value in the UI changed, use VisualElement.NotifyPropertyChanged.

### Properties

| Property | Description |
| --- | --- |
| TwoWay | Changes on the data source will be replicated in the UI. Changes on the UI will be replicated to the data source. |
| ToSource | Changes will only be replicated from the UI to the data source for this binding. |
| ToTarget | Changes will only be replicated from the source to the UI for this binding. |
| ToTargetOnce | Changes will only be replicated once, from the source to the UI. This binding will be ignored on subsequent updates. |
