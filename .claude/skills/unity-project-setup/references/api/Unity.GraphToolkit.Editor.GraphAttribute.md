<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to declare a graph type by associating it with a file extension and optional configuration options.

Use this attribute to associate a custom Graph class with a unique file extension and GraphOptions. The `extension` parameter defines the file extension for the graph assets. This extension must be unique across the project because Unity uses it to select the correct importer. You can also configure additional options using GraphOptions. This attribute is required for any class that inherits from Graph and serves as the entry point for enabling editor support for the graph tool. 

<para> This example keeps the default behavior and adds support for subgraphs by enabling <see cref="GraphOptions.SupportsSubgraphs" />. </para>

```csharp
[Graph(".mygraph", GraphOptions.SupportsSubgraphs)]
 public class MyGraph : Graph { }
```

### Properties

| Property | Description |
| --- | --- |
| Extension | Gets the file extension associated with the Graph. |
| Options | Gets the graph configuration options. |

### Constructors

| Constructor | Description |
| --- | --- |
| GraphAttribute | Initializes a new instance of the GraphAttribute class with a file extension and optional graph options. |
