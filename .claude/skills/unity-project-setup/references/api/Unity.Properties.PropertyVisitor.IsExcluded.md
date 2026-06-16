<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyVisitor.IsExcluded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| property | The property providing access to the data. |
| container | The container being visited. |
| value | The value being visited. |

### Returns

**bool** `true` if the property should be skipped; otherwise, `false`.

### Description

Called before visiting each property to determine if the property should be visited.

This method is called after all IExcludePropertyAdapter_1 have had a chance to run.
