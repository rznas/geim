<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.ListPropertyBag_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A IPropertyBag_1 implementation for a List_1 type.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| InstantiationKind | Implement this property and return true to provide custom type instantiation for the container type. |

### Public Methods

| Method | Description |
| --- | --- |
| TryGetProperty | Gets the property associated with the specified index. |
| Accept | Accepts visitation from a specified ITypeVisitor. |
| CreateInstance | Creates and returns a new instance of TContainer. |
| GetProperties | Implement this method to return a PropertyCollection_1 that can enumerate through all properties for the TContainer. |
| TryCreateInstance | Tries to create a new instance of TContainer. |

### Protected Methods

| Method | Description |
| --- | --- |
| InstantiateWithCount | Implement this method to provide custom type instantiation with a count value for the container type. |
| Instantiate | Implement this method to provide custom type instantiation for the container type. |
