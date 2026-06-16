<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/properties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Handle type data generically with Unity Properties

The Unity Properties API, in the `Unity.Properties` namespace, uses a [visitor design pattern](https://en.wikipedia.org/wiki/Visitor_pattern) to visit .NET objects at runtime. Visiting objects allows you to discover and modify their properties and add new operations to an existing object structure at runtime without modifying the structure itself. You can build various functionalities on top of the visitor pattern, such as serialization, data migration, deep data comparisons, and data binding.

| **Topic** | **Description** |
| --- | --- |
| **Introduction to Unity Properties** | Understand the fundamentals and uses of the Unity Properties API. |
| **Property bags** | Understand the role of property bags and the performance considerations when using them. |
| **Property visitors** | Understand the role of property visitors and the performance considerations when using them. |
| **Property paths** | Understand the role of property paths and the performance considerations when using them. |
| **Create a property visitor with the PropertyVisitor class** | Learn how to use the `PropertyVisitor` base class to create a property visitor from an example. |
| **Create a property visitor with low-level APIs** | Learn how to use the `IPropertyBagVisitor` and `IPropertyVisitor` interfaces to create a property visitor from an example. |

## Additional resources

- [Serialization](https://docs.unity3d.com/Packages/com.unity.serialization@latest)
- Runtime data binding
