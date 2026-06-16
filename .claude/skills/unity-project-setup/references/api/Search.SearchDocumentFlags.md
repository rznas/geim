<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchDocumentFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search document flags are used by the indexing system to provide additional information of an indexed document, like its source.

### Properties

| Property | Description |
| --- | --- |
| None | Indicates no particular flags. |
| Asset | Indicates that the indexed document is an asset. So it should have a valid asset path. |
| Object | Indicates that the search document was indexed from an object such as a prefab or a scene. |
| Nested | Indicates that the search document is an nested object. |
| Grouped | Indicates that the indexed document was grouped in another asset provider. |
| Resources | Indicates that the document was indexed from a resource bundle. |
