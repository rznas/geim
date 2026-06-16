<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.ContainerPropertyBag_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for implementing a static property bag for a specified container type. This is an abstract class.

A ContainerPropertyBag_1 is used to describe and traverse the properties for a specified `TContainer` type.

 In order for properties to operate on a type, a ContainerPropertyBag_1 must exist and be pre-registered for that type.

 _NOTE_ In editor use cases property bags can be generated dynamically through reflection. (see Unity.Properties.Reflection)

### Public Methods

| Method | Description |
| --- | --- |
| TryGetProperty | Gets the property associated with the specified name. |

### Protected Methods

| Method | Description |
| --- | --- |
| AddProperty | Adds a Property_2 to the property bag. |

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
