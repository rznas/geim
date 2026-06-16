<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyPropertyStorageType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes how property values of a specific property are stored in memory.

### Properties

| Property | Description |
| --- | --- |
| Sparse | The property is stored in a sparse array. In a sparse array, memory is allocated for each node regardless if the node has a value for the property or not. |
| Dense | The property is stored in a compact array of values. In a dense array, memory is allocated for a node only if the node has a value for the property. |
| Blob | The property is stored as a binary blob. |
| Default | The property is stored in the default storage type. Dense is the default storage type. |
