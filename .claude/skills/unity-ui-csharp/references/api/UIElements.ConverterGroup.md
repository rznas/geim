<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ConverterGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A type to hold information about a conversion registry used locally on bindings.

You can apply converter groups on a DataBinding in UXML with the `source-to-ui-converters` or `ui-to-source-converters` attributes or in C# script with the DataBinding.ApplyConverterGroupToSource or DataBinding.ApplyConverterGroupToUI methods.

### Properties

| Property | Description |
| --- | --- |
| description | Optional description for a converter group ID that may include information about what this group contains or is used for, to be displayed to users to assist while authoring. |
| displayName | Optional and alternative name for a converter group ID, to be displayed to users to assist while authoring. |
| id | The group id. |

### Constructors

| Constructor | Description |
| --- | --- |
| ConverterGroup | Creates a ConverterGroup. |

### Public Methods

| Method | Description |
| --- | --- |
| AddConverter | Adds a converter to the group. |
| TryConvert | Converts the specified value from TSource to TDestination using only the converter group. |
| TrySetValue | Sets the value of a property at the given path to the given value, using this converter group or the global ones. |
