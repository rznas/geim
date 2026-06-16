<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.BoundProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A BoundProperty is a safe handle to read and write value in a generic way from any Unity components.

### Static Properties

| Property | Description |
| --- | --- |
| Null | An empty BoundProperty object that does not refer to a property. |

### Properties

| Property | Description |
| --- | --- |
| index | The index of this BoundProperty to the internal list of bound properties. |
| version | The version of the BoundProperty. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares this BoundProperty to a specific BoundProperty. |
| Equals | Checks if this BoundProperty equals a specified BoundProperty object. |
| GetHashCode | Retrieves a unique hash based on this BoundProperty. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | BoundProperty objects are not equal if they refer to different properties. |
| operator == | BoundProperty objects are equal if they refer to the same property. |
