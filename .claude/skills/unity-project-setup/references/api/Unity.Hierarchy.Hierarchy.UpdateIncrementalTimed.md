<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.Hierarchy.UpdateIncrementalTimed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| milliseconds | The time period in milliseconds. |

### Returns

**bool** `true` if additional invocations are needed to complete the update, `false` otherwise.

### Description

Updates the hierarchy incrementally, executing pending changes in the command list until a time limit is reached.
