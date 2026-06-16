<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.INodeExtensions.GetNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| port | The port to get the owning node from. |

### Returns

**INode** The INode that contains the specified port.

### Description

Retrieves the INode that owns the specified port.

This is helpful when analyzing graph structures, especially when traversing connections. The returned node provides context for the port’s role in the graph.

```csharp
IPort port = somePortReference;
 INode node = port.GetNode(); Debug.Log($"Port '{port.name}' belongs to node: {node}.");
```
