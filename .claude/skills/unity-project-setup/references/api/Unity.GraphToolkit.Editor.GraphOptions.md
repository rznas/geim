<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that define configuration options that affect the behavior and capabilities of a Graph class.

Use the GraphOptions enum in conjunction with the GraphAttribute to customize how a graph behaves, including support for subgraphs and automatic node discovery. The default value is GraphOptions.Default, which enables standard behavior such as allowing nodes defined in the same assembly as the graph to be automatically included in the graph item library. Combine flags to customize behavior. This enum is marked with System.FlagsAttribute, so you can combine values using bitwise operations to enable multiple options. 

<para> This example keeps the default behavior and adds support for subgraphs by enabling <see cref="GraphOptions.SupportsSubgraphs" />. </para>

```csharp
[Graph(".mygraph", GraphOptions.SupportsSubgraphs)]
 public class MyGraph : Graph { }
```

### Properties

| Property | Description |
| --- | --- |
| SupportsSubgraphs | Indicates that this graph supports subgraphs. |
| DisableAutoInclusionOfNodesFromGraphAssembly | Indicates that nodes (i.e., subclasses of Node) defined in the same assembly as the graph are not automatically added to the graph item library. |
| Default | The default graph configuration. |
| None | No graph options enabled. |
