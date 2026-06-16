<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoundsInt.Contains.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Point to check. |

### Returns

**bool** Is `point` contained in the bounding box?

### Description

Is `point` contained in the bounding box?

A point is contained in the bounding box if its x, y and z components are greater or equal to BoundsInt.xMin, BoundsInt.yMin and BoundsInt.zMin respectively, and less than BoundsInt.xMax, BoundsInt.yMax and BoundsInt.zMax respectively.
