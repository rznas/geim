<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.FetchGameObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | Scene to get objects from. |

### Returns

**GameObject[]** The array of game objects in the scene.

### Description

Utility function to fetch all the game objects in a particular scene.

Use `SearchUtils.FetchGameObjects` to create a custom SearchProvider that is able to access current scene objects.

```csharp
static void OnEnable()
{
    s_GameObjects = SearchUtils.FetchGameObjects().ToArray();
    s_QueryEngine = new QueryEngine<GameObject>();

    // Id supports all operators
    s_QueryEngine.AddFilter("id", go => go.GetInstanceID());
    // Name supports only :, = and !=
    s_QueryEngine.AddFilter("n", go => go.name, new[] {":", "=", "!="});

    // Add distance filtering. Does not support :.
    s_QueryEngine.AddFilter("dist", DistanceHandler, DistanceParamHandler, new[] {"=", "!=", "<", ">", "<=", ">="});
}
```

```csharp
static IEnumerator SearchItems(SearchContext context, SearchProvider provider)
{
    var query = s_QueryEngine.ParseQuery(context.searchQuery);
    if (!query.valid)
        yield break;

    var filteredObjects = query.Apply(s_GameObjects);
    foreach (var filteredObject in filteredObjects)
    {
        yield return provider.CreateItem(filteredObject.GetInstanceID().ToString(), null, null, null, filteredObject.GetInstanceID());
    }
}
```
