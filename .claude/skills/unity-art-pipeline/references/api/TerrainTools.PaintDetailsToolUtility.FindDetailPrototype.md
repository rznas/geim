<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintDetailsToolUtility.FindDetailPrototype.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | The target terrain. |
| sourceTerrain | The source terrain. |
| sourceDetail | The index of the source detail. |

### Returns

**int** Returns the index position of the similar detail. Otherwise, returns an invalid index of -1.

### Description

Gets the index position of similar details between two terrains.

This method returns the index position of the detail within the target terrain that matches the detail on the source terrain. If the same detail doesn't exist on the target terrain, then an invalid index is passed.
