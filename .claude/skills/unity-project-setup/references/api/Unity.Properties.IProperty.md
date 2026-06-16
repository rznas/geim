<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.IProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface for working with properties.

This is used to pass or store properties without knowing the underlying container or value type. " IProperty_1 " Property_2

### Properties

| Property | Description |
| --- | --- |
| IsReadOnly | Gets a value indicating whether the property is read-only or not. |
| Name | Gets the name of the property. |

### Public Methods

| Method | Description |
| --- | --- |
| DeclaredValueType | Returns the declared value type of the property. |
| GetAttribute | Returns the first attribute of the given type. |
| GetAttributes | Returns all attribute of the given type. |
| HasAttribute | Returns true if the property has any attributes of the given type. |
