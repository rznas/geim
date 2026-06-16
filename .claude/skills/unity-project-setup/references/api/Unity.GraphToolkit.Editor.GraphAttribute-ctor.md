<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| extension | The file extension to associate with assets of the graph type. This value must be unique because Unity uses it to select the correct importer. |
| options | The configuration options for the graph. Defaults to GraphOptions.Default if not specified. |

### Description

Initializes a new instance of the GraphAttribute class with a file extension and optional graph options.

Use this constructor to define the asset extension and configure the graph. This allows for proper asset recognition and import handling by Unity. The values in GraphOptions support bitwise combination. Combine multiple flags to configure the graph with custom behavior. 

<para> This example keeps the default behavior and adds support for subgraphs by enabling <see cref="GraphOptions.SupportsSubgraphs" />. </para>

```csharp
[Graph(".mygraph", GraphOptions.SupportsSubgraphs)]
 public class MyGraph : Graph { }
```
