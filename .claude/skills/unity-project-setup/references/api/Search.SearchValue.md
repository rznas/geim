<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SearchValue is used to extend a QueryEngine with custom type parsers and filter operators to search results by value.

A SearchValue is a structure that can hold a value of any type defined in SearchValue.ValueType. You can use this structure to add filtering capabilities to any QueryEngine for all the types supported in SearchValue.ValueType. See SearchValue.SetupEngine for more details.

### Static Properties

| Property | Description |
| --- | --- |
| invalid | Represent an invalid search value. |

### Properties

| Property | Description |
| --- | --- |
| boolean | Boolean value. |
| floatNumber | Number value. |
| text | Text representation of the value. |
| type | Indicates the concrete type of the search value. |
| valid | Indicates if the search value is valid. |

### Static Methods

| Method | Description |
| --- | --- |
| SetupEngine | Extend a QueryEngine to work with SearchValues. |
