<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyContainer.TryGetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container whose property value will be returned. |
| name | The name of the property to get. |
| value | When this method returns, contains the value associated with the specified name, if the property is found. otherwise the default value for the `TValue`. |

### Returns

**bool** `true` if the value exists for the specified name; otherwise, `false`.

### Description

Gets the value of a property by name.

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container whose property value will be returned. |
| path | The path of the property to get. |
| value | When this method returns, contains the value associated with the specified path, if the property is found. otherwise the default value for the `TValue`. |

### Returns

**bool** `true` if the value exists at the specified path; otherwise, `false`.

### Description

Gets the value of a property by path.

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container whose property value will be returned. |
| path | The path of the property to get. |
| value | When this method returns, contains the value associated with the specified path, if the property is found. otherwise the default value for the `TValue`. |
| returnCode | When this method returns, contains the return code. |

### Returns

**bool** `true` if the value exists at the specified path; otherwise, `false`.

### Description

Gets the value of a property by path.
