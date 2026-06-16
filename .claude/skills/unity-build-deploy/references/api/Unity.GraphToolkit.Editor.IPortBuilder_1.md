<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPortBuilder_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface representing a generic port builder. Used in a builder pattern to configure and construct ports.

This interface supports a builder pattern, where each method returns the builder instance, allowing chained configuration of port settings before final construction using Build. Use derived interfaces such as IInputPortBuilder or IOutputPortBuilder to build specific port types.

```csharp
context.AddInputPort("MyInput")
        .WithDataType(typeof(int))
        .WithDisplayName("Input Value")
        .Build();
```

### Public Methods

| Method | Description |
| --- | --- |
| Build | Builds and returns the final IPort instance based on the current configuration of the builder. |
| WithConnectorUI | Configures the connector UI shape for the port being built. |
| WithDisplayName | Configures the display name of the port being built. |
