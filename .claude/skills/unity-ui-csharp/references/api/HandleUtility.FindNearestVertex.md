<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.FindNearestVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guiPoint | A point in GUI space. |
| vertex | The nearest vertex position to guiPoint, or a default value if no vertex is within the minimum picking distance. |
| objectsToSearch | An array of Transform to consider when picking the nearest vertex. If null, all active objects in open scenes are considered. |
| objectsToIgnore | An array of Transform to exclude from consideration when picking nearest vertex. |
| gameObject | The GameObject that contains the nearest vertex found by this function. Null if no vertex was found. |

### Returns

**bool** Returns true if a vertex within 50 pixels of the guiPoint was found, false if no vertex found within the minimum picking radius.

### Description

Returns the nearest vertex to a guiPoint within a maximum radius of 50 pixels.
