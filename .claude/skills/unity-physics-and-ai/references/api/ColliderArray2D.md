<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ColliderArray2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of Collider2D.

The collection of Collider2D can be enumerated using "foreach" or its contents accessed via an indexer. The collection does not allocate any managed memory but must be disposed of.

This collection can only be created by Unity and is typically returned as results from physics queries.

### Properties

| Property | Description |
| --- | --- |
| Length | The number of Collider2D elements in the collection. |
| this[int] | An indexer allowing access to any Collider2D in the collection. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes of the native memory allocated by the collection. |
| GetEnumerator | Gets an enumerator which allows iteration of the collection. This is typically used implicitly by "foreach". |
