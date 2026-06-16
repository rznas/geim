<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.DictionaryPropertyBag_2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An IPropertyBag_1 implementation for a Dictionary_2 type.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| InstantiationKind | Implement this property and return true to provide custom type instantiation for the container type. |

### Public Methods

| Method | Description |
| --- | --- |
| Accept | Accepts visitation from a specified ITypeVisitor. |
| CreateInstance | Creates and returns a new instance of TContainer. |
| GetProperties | Implement this method to return a PropertyCollection_1 that can enumerate through all properties for the TContainer. |
| TryCreateInstance | Tries to create a new instance of TContainer. |

### Protected Methods

| Method | Description |
| --- | --- |
| Instantiate | Implement this method to provide custom type instantiation for the container type. |
