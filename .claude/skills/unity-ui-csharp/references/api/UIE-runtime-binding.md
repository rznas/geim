<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-runtime-binding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Runtime data binding

Runtime data binding binds the properties of any plain C# `object` to the properties of a UI control. You can use this type of data binding in both the runtime and Editor UI. However, for serialized data in the Editor UI, use the SerializedObject data binding because it provides better support for Unity’s serialization system, including undo/redo functionality and multi-selection operations.

| **Topic** | **Description** |
| --- | --- |
| Get started with runtime binding | Learn the basics of runtime binding from an example. |
| Create a runtime data binding in C# scripts | Create a runtime data binding. |
| Define a data source | Understand how to define a data source for runtime binding, which can be any C# types. |
| Define binding modes and update triggers | Define binding modes and update triggers to configure how changes are replicated between the data source and the UI. |
| Convert data types | Add type converters to convert data types between the data source and the UI. |
| Define logging levels | Define logging levels to debug runtime bindings. |
| Create custom binding types | Create custom binding types and attributes. |
| Runtime binding example | Learn how to create a runtime binding from examples. |

## Additional resources

- SerializedObject data binding
