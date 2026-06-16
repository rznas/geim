<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TestOverlapGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Circle geometry used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided Circle geometry overlaps any shapes. A circle with a radius of zero is equivalent to PhysicsWorld.TestOverlapPoint. See CircleGeometry and QueryFilter.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Capsule geometry used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided Capsule geometry overlaps any shapes. See CapsuleGeometry and QueryFilter.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Polygon geometry used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided Polygon geometry overlaps any shapes. See PolygonGeometry and QueryFilter.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Segment geometry used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided Segment geometry overlaps any shapes. See SegmentGeometry and QueryFilter.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Chain-Segment geometry used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided Chain-Segment geometry overlaps any shapes. See ChainSegmentGeometry and QueryFilter.
