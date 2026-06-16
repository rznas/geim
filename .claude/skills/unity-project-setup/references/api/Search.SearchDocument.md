<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchDocument.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a searchable document that has been indexed.

### Properties

| Property | Description |
| --- | --- |
| id | Document unique ID in the search index. |
| name | Readable name of the document. |
| score | Document base relevance score. |
| source | Original source from which the document was indexed. The source is usually the container asset, i.e. prefab, Unity scene or the imported asset itself. |
| valid | If true the document is considered valid. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchDocument | Create a new SearchDocument. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compare this document against another document. |
| Equals | Compare this document against another document. |
| ToString | Returns the document ID string. |
