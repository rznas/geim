<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.GetDirtyCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceID | The object's instance ID. |
| target | The object. |

### Description

Returns an integer that indicates the number of times the specified object's serialized properties have changed.

This count is incremented each time a call to SetDirty changes the object's serializable properties, and is reset to zero when the object is saved.

Additional resources: IsDirty, SetDirty.
