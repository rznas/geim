<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.SubgraphAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to define a link between a subgraph type and a main graph type.

Apply this attribute to a custom Graph class to declare it as a valid subgraph type for a specific parent (main) graph type. This attribute is required when you want to designate a specific graph type to function as a subgraph in tools that support subgraphs. Use it on custom graph classes that are designed to act as subgraphs. This is useful when you want to provide specialized subgraph behaviors, customize the user experience, or restrict subgraph usage to certain graph types. When a graph type declares that it supports subgraphs using GraphOptions.SupportsSubgraphs but no corresponding SubgraphAttribute is found, the main graph type itself is used as the subgraph type by default. You can associate multiple subgraph types with the same main graph type. In this case, the editor's context menu includes multiple "Create `Subgraph class name` Subgraph from Selection" actions—one for each valid subgraph type.

```csharp
// This declares a subgraph type used by MyMainGraph
 [Subgraph(typeof(MyMainGraph))]
 public class MySubgraph : Graph
```

### Properties

| Property | Description |
| --- | --- |
| MainGraphType | The type of the main Graph that supports this subgraph type. |

### Constructors

| Constructor | Description |
| --- | --- |
| SubgraphAttribute | Initializes a new instance of the SubgraphAttribute class. |
