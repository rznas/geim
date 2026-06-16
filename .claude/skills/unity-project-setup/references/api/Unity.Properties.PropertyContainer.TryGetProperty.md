<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyContainer.TryGetProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container tree to search. |
| path | The property path to resolve. |
| property | When this method returns, contains the property associated with the specified path, if the property is found; otherwise, null. |

### Returns

**bool** `true` if the property was found at the specified path; otherwise, `false`.

### Description

Gets an IProperty on the specified container for the given PropertyPath.

While the container data is not actually read from or written to. The container itself is needed to resolve polymorphic fields and list elements.

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container tree to search. |
| path | The property path to resolve. |
| property | When this method returns, contains the property associated with the specified path, if the property is found; otherwise, null. |
| returnCode | When this method returns, contains the return code. |

### Returns

**bool** `true` if the property was found at the specified path; otherwise, `false`.

### Description

Gets an IProperty on the specified container for the given PropertyPath.

While the container data is not actually read from or written to. The container itself is needed to resolve polymorphic fields and list elements.
