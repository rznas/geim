<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyContainer.TryAccept.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| visitor | The visitor. |
| container | The container to visit. |
| parameters | The visit parameters to use. |

### Returns

**bool** `true` if the visitation succeeded; `false` otherwise.

### Description

Tries to visit the specified by ref using the specified .

### Parameters

| Parameter | Description |
| --- | --- |
| visitor | The visitor. |
| container | The container to visit. |
| parameters | The visit parameters to use. |
| returnCode | When this method returns, contains the return code. |

### Returns

**bool** `true` if the visitation succeeded; `false` otherwise.

### Description

Tries to visit the specified by ref using the specified .

### Parameters

| Parameter | Description |
| --- | --- |
| visitor | The visitor. |
| container | The container to visit. |
| path | The property path to visit. |
| returnCode | When this method returns, contains the return code. |
| parameters | The visit parameters to use. |

### Description

Visit the specified using the specified at the given PropertyPath.
