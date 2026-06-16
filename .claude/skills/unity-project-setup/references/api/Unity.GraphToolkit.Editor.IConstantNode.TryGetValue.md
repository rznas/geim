<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IConstantNode.TryGetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The output parameter that holds the value if the conversion is successful. |

### Returns

**bool** `true` if the value was successfully retrieved and cast to `T`; otherwise, `false`.

### Description

Attempts to retrieve the value of the constant node as the specified type.

This method provides type-safe access to the constant's stored value. It performs a type check and conversion internally. If the value cannot be cast to `T`, the method returns `false` and is set to the default value of `T`.
