<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingContext-dataSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The data source that was resolved for a given binding.

If a Binding implements the IDataSourceProvider interface and provides its own data source, it will automatically be used as the resolved data source; otherwise the data source will be resolved to the first valid data source on the target element or its ancestors. This value can be `null`.
