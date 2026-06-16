<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IDataSourceProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Binding types deriving from Binding can implement this interface to gain an additional layer of data source and data source path. These will be used by the binding system to compute the final BindingContext.dataSource and BindingContext.dataSourcePath that will be passed to the BindingContext during the binding update.

This dataSource and dataSourcePath will only affect the binding itself and not the hierarchy.

### Properties

| Property | Description |
| --- | --- |
| dataSource | Data source object that is local to the binding object. |
| dataSourcePath | Data source path that is local to the binding object. |
