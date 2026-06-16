<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.IndexWordComponents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| word | Word to add to the index. |

### Description

Splits a word into multiple variations.

See IndexPropertyComponents for some examples on how a value can be split into multiple variations. IndexWordComponents performs the same task for words.

```csharp
using UnityEditor;
using UnityEditor.Search;

static class Example_ObjectIndexer_IndexWordComponents
{
    [CustomObjectIndexer(typeof(SceneAsset), version = 2 /* update me when the code below changes */)]
    internal static void IndexSceneName(CustomObjectIndexerTarget context, ObjectIndexer indexer)
    {
        if (!(context.target is SceneAsset sceneAsset))
            return;

        indexer.IndexWordComponents(context.documentIndex, sceneAsset.name);
    }

}
```
