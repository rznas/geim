<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ConverterGroups.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a set of static methods to register and use converter groups and registers a set of global converters. ConverterGroup. DataBinding.

### Static Methods

| Method | Description |
| --- | --- |
| RegisterConverterGroup | Registers a converter group by ID. Converter groups can be applied on a binding using local converters. |
| RegisterGlobalConverter | Registers a global UI conversion delegate that will be used when converting data between a data source and a UI control. This delegate will be used both when converting data from and to UI. |
| TryConvert | Converts the specified value from TSource to TDestination using the registered global converters. |
| TryGetConverterGroup | Retrieves a converter group by ID. |
| TrySetValueGlobal | Sets the value of a property at the given path to the given value, using the global converters. |
