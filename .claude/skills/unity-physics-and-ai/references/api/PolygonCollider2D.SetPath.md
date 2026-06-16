<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PolygonCollider2D.SetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the path to set. |
| points | An ordered span of the vertices (points) that define the path. |

### Description

Define a path by its constituent points.

A *path* is a cyclic sequence of line segments between points that define the outline of the polygon. Because the polygon can have holes and discontinuous parts, its shape is not necessarily defined by a single path. For example, the polygon might actually be 3 separate paths. In this case SetPath will be called 3 times, with an `index` of 0, 1 and 2. So `index` specifies which of these three collections of points are used.

Additional resources: pathCount, GetPath.

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the path to set. |
| points | An ordered list of the vertices (points) that define the path. |

### Description

Define a path by its constituent points.

A *path* is a cyclic sequence of line segments between points that define the outline of the polygon. Because the polygon can have holes and discontinuous parts, its shape is not necessarily defined by a single path. For example, the polygon might actually be 3 separate paths. In this case SetPath will be called 3 times, with an `index` of 0, 1 and 2. So `index` specifies which of these three collections of points are used.

Additional resources: pathCount, GetPath.

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the path to set. |
| points | An ordered array of the vertices (points) that define the path. |

### Description

Define a path by its constituent points.

A *path* is a cyclic sequence of line segments between points that define the outline of the polygon. Because the polygon can have holes and discontinuous parts, its shape is not necessarily defined by a single path. For example, the polygon might actually be 3 separate paths. In this case SetPath will be called 3 times, with an `index` of 0, 1 and 2. So `index` specifies which of these three collections of points are used.

Additional resources: pathCount, GetPath.
