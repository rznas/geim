<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.IPortDefinitionContext.AddInputPort.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| portName | The unique identifier of the input port. |

### Returns

**IInputPortBuilder** An IInputPortBuilder to further configure the input port.

### Description

Adds a new input port.

`portName` is used to identify the port. It must be unique among input ports and node options on the node. This name is used as the ID when calling GetInputPortByName. If IPortBuilder_1.WithDisplayName is not used, this name is also used as the port's display label. **Warning:** Changing a port's name will break any existing connections, as the name is used as the port's unique ID. Use the returned builder to configure port properties and then call IPortBuilder_1.Build to create the port.

```csharp
var port = context.AddInputPort("myInput")
     .WithDisplayName("My Input Port")
     .WithDataType&lt;int&gt;()
     .WithConnectorUI(PortConnectorUI.Circle)
     .Build();
```

### Parameters

| Parameter | Description |
| --- | --- |
| portName | The unique identifier of the input port. |

### Returns

**IInputPortBuilder<T>** An IInputPortBuilder_1 to further configure the typed input port.

### Description

Adds a new typed input port with the specified name.

`portName` is used to identify the port. It must be unique among input ports on the node. This name is used as the ID when calling GetInputPortByName. If IPortBuilder_1.WithDisplayName is not used, this name is also used as the port's display label. **Warning:** Changing a port's name will break any existing connections, as the name is used as the port's unique ID. Use the returned builder to configure port properties and then call IPortBuilder_1.Build to create the port.

```csharp
var port = context.AddInputPort&lt;string&gt;("stringInput")
     .WithDisplayName("String Input")
     .WithDefaultValue("default text")
     .Build();
```
