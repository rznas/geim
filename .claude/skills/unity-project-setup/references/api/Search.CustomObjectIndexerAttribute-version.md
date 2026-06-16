<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.CustomObjectIndexerAttribute-version.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Version of the custom indexer. Increment this number to have the indexer re-index the indexes.

Each time you modify the code of a custom indexer, increment its `version` number in order to update the search indexes.

```csharp
[CustomObjectIndexer(typeof(SceneAsset), version = 2 /* update me when the code below changes */)]
internal static void IndexSceneName(CustomObjectIndexerTarget context, ObjectIndexer indexer)
{
    if (!(context.target is SceneAsset sceneAsset))
        return;

    indexer.IndexWordComponents(context.documentIndex, sceneAsset.name);
}
```
