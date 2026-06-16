<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.Hierarchy.GetOrCreatePropertyUnmanaged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The property name. |
| type | The storage type for the property. |

### Returns

**HierarchyPropertyUnmanaged<T>** The property accessor.

### Description

Creates an unmanaged property with a specified name.

The result of this method should be stored and reused to avoid the costly lookup by name.
