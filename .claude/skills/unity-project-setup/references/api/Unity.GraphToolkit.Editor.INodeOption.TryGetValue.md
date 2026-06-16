<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.INodeOption.TryGetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The variable to assign the value to, if retrieval succeeds. |

### Returns

**bool** `true` if the option exists and the type matches; otherwise, `false`.

### Description

Tries to retrieve the value of the node option using the specified type.

If the value was never explicitly set, this method still returns `true`, and will contain the default value for type `T`.
