<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.Merge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| removeDocuments | Documents to be removed as part of the merge operation. Can be null or empty. |
| other | The other index to be merged into the current one. |
| baseScore | Base score to give to all the merged indexes. |
| documentIndexing | Utility callback used to inject last minutes indexes before merging the indexes of a document. |

### Description

Merge a search index content into the current index.

This is especially useful to do incremental updates of an index.
