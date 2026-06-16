<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.CustomObjectIndexerAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | Type of object to be indexed. |

### Description

Register a new Indexing function bound to the specific type.

```csharp
[CustomObjectIndexer(typeof(SceneAsset), version = 2 /* update me when the code below changes */)]
internal static void IndexSceneName(CustomObjectIndexerTarget context, ObjectIndexer indexer)
{
    if (!(context.target is SceneAsset sceneAsset))
        return;

    indexer.IndexWordComponents(context.documentIndex, sceneAsset.name);
}
```
