<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Various physics queries.

### Static Methods

| Method | Description |
| --- | --- |
| CapsuleAndCapsule | Check the intersection between Capsule and Capsule geometries. |
| CapsuleAndCircle | Check the intersection between Capsule and Circle geometries. |
| CastShapes | Cast two shape proxies against each other. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. |
| ChainSegmentAndCapsule | Check the intersection between ChainSegment and Capsule geometries. |
| ChainSegmentAndCircle | Check the intersection between ChainSegment and Circle geometries. |
| ChainSegmentAndPolygon | Check the intersection between ChainSegment and Polygon geometries. |
| CircleAndCircle | Check the intersection between Circle and Circle geometries. |
| PolygonAndCapsule | Check the intersection between Polygon and Capsule geometries. |
| PolygonAndCircle | Check the intersection between Polygon and Circle geometries. |
| PolygonAndPolygon | Check the intersection between Polygon and Polygon geometries. |
| SegmentAndCapsule | Check the intersection between Segment and Capsule geometries. |
| SegmentAndCircle | Check the intersection between Segment and Circle geometries. |
| SegmentAndPolygon | Check the intersection between Segment and Polygon geometries. |
| SegmentDistance | Calculate the distance and closest points between two segments. |
| ShapeAndShape | Check the intersection between two shapes (UnityEngine.LowLevelPhysics2D.PhysicsShape). |
| ShapeDistance | Calculate the distance and closest points between two shape proxies. |
| ShapeTimeOfImpact | Calculate the upper bound on time before two shape proxies penetrate i.e. the time-of-impact. Time is represented as a fraction in the range [0, maxInterval]. This uses a swept separating axis and may miss some intermediate, non-tunneling collisions. |
