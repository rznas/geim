<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPortBuilder_1.Build.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IPort** The constructed IPort.

### Description

Builds and returns the final IPort instance based on the current configuration of the builder.

Call this method after setting all desired configuration options using the builder methods. The builder captures options such as the port's data type, display name, connector style, and default value, if applicable. This method finalizes the port and adds it to the graph. After calling `Build()`, do not modify the builder further. This method is typically called at the end of a chain.

```csharp
context.AddInputPort("MyPort")
        .WithDataType(typeof(float))
        .WithDisplayName("My Float Port")
        .WithConnectorUI(PortConnectorUI.Circle)
        .Build();
```
