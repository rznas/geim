<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.SubgraphAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mainGraphType | The type of the main Graph that this subgraph type is compatible with. This must be a type that inherits from Graph. |

### Description

Initializes a new instance of the SubgraphAttribute class.

Use this constructor to associate a custom subgraph class with a parent graph type. This enables the graph tool to recognize the subgraph as a valid option for the specified main graph. The attribute must be applied to a Graph-derived class intended to function as a subgraph.

```csharp
// This declares a subgraph type used by MyMainGraph
 [Subgraph(typeof(MyMainGraph))]
 public class MySubgraph : Graph
```
