<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.IPortDefinitionContext.AddOutputPort.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| portName | The unique identifier of the output port. |

### Returns

**IOutputPortBuilder** An IOutputPortBuilder to further configure the output port.

### Description

Adds a new output port with the specified name.

`portName` is used to identify the port. It must be unique among output ports on the node. This name is used as the ID when calling GetOutputPortByName. If IPortBuilder_1.WithDisplayName is not used, this name is also used as the port's display label. **Warning:** Changing a port's name will break any existing connections, as the name is used as the port's unique ID. Use the returned builder to configure port properties and then call IPortBuilder_1.Build to create the port.

```csharp
var port = context.AddOutputPort("myOutput")
     .WithDisplayName("My Output Port")
     .WithDataType(typeof(float))
     .WithConnectorUI(PortConnectorUI.Arrowhead)
     .Build();
```

### Parameters

| Parameter | Description |
| --- | --- |
| portName | The unique identifier of the output port. |

### Returns

**IOutputPortBuilder<T>** An IOutputPortBuilder_1 to further configure the typed output port.

### Description

Adds a new typed output port with the specified name.

`portName` is used to identify the port. It must be unique among output ports on the node. This name is used as the ID when calling GetOutputPortByName. If IPortBuilder_1.WithDisplayName is not used, this name is also used as the port's display label. **Warning:** Changing a port's name will break any existing connections, as the name is used as the port's unique ID. Use the returned builder to configure port properties and then call IPortBuilder_1.Build to create the port.

```csharp
var port = context.AddOutputPort&lt;bool&gt;("boolOutput")
     .WithDisplayName("Boolean Output")
     .Build();
```
