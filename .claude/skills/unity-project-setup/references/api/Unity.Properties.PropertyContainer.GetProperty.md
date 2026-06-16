<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyContainer.GetProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container tree to search. |
| path | The property path to resolve. |

### Returns

**IProperty** The IProperty for the given path.

### Description

Gets an IProperty on the specified container for the given PropertyPath.

While the container data is not actually read from or written to. The container itself is needed to resolve polymorphic fields and list elements.
