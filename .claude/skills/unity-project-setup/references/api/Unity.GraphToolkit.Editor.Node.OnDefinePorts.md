<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.OnDefinePorts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Provides methods for defining input and output ports. |

### Description

Called during DefineNode to define the input and output ports of the node.

This method is called after OnDefineOptions and is used to declare the structure of the node's connectivity. Use the provided IPortDefinitionContext to define input and output ports using a builder pattern. The port builder pattern enables fluent configuration of ports by chaining methods such as `WithDisplayName`, `WithDefaultValue`, or `WithConnectorUI`, followed by `Build()` to finalize the port. The `portName` parameter passed to `AddInputPort` or `AddOutputPort` serves as the port's unique identifier. The `portName` parameter must be unique within its direction (input or output) on the node and is also used as the display name unless you explicitly call `WithDisplayName`. You also use the `portName` identifier to call Node.GetInputPortByName.

```csharp
protected override void OnDefinePorts(IPortDefinitionContext context)
 {
     var inputPort = context.AddInputPort&lt;string&gt;("stringInput")
         .WithDisplayName("String Input")
         .WithDefaultValue("Default Value")
         .Build();     var outputPort = context.AddOutputPort("myOutput")
         .WithDisplayName("My Output Port")
         .WithDataType(typeof(float))
         .WithConnectorUI(PortConnectorUI.Arrowhead)
         .Build();
 }
```
