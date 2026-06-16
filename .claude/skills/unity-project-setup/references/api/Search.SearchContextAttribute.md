<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchContextAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This attribute can be attached to a component object field in order to have the ObjectField use the advanced Object Picker.

```csharp
[SearchContext("t:mesh is:nested mesh", "asset")]
public UnityEngine.Object assetMesh;
```

### Properties

| Property | Description |
| --- | --- |
| flags | Search view flags used to open the Object Picker in various states. |
| instantiableProviders | Search provider concrete types that will be instantiated and assigned to the Object Picker search context. |
| providerIds | A list of Search Provider IDs that will be used to create the search context. |
| query | Initial search query used to open the Object Picker window. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchContextAttribute | Search context constructor used to add some search context to an object field. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
