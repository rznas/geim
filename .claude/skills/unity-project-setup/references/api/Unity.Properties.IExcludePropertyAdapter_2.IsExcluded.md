<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.IExcludePropertyAdapter_2.IsExcluded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The context being visited. |
| container | The container being visited. |
| value | The value being visited. |

### Returns

**bool** `true` if visitation should be skipped, `false` otherwise.

### Description

Invoked when the visitor encounters specific a `TContainer` and `TValue` pair.
