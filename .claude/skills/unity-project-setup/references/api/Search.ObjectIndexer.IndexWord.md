<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.IndexWord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| word | Word to add to the index. |
| scoreModifier | Modifier to apply to the base match score for a specific word. |

### Description

Adds a new word coming from a specific document to the index.

The following example indexes a word that can be used to search indexed prefabs with `myawesomeword`, `myawe`, etc.

```csharp
[CustomObjectIndexer(typeof(GameObject))]
static void IndexGameObject(CustomObjectIndexerTarget target, ObjectIndexer indexer)
{
    var go = target.target as GameObject;
    if (go == null)
        return;

    indexer.IndexWord(target.documentIndex, "myawesomeword", 0);
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| word | Word to add to the index. |
| exact | If true, we will also store an exact match entry for this word. |
| scoreModifier | Modifier to apply to the base match score for a specific word. |

### Description

Adds a new word coming from a specific document to the index. The word will be added with multiple variations allowing partial search.

The following example indexes a word that can be used to search indexed prefabs with `myawesomeword`, `myawe`, etc.

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document where the indexed word was found. |
| word | Word to add to the index. |
| maxVariations | **Maximum number of variations to compute. Cannot be higher than the length of the word.** |
| exact | If true, the indexer will also store an exact match entry for this word. |
| scoreModifier | Modifier to apply to the base match score for a specific word. |

### Description

The word will be added with a maximum of variation. This can be used to save some space for very large words.
