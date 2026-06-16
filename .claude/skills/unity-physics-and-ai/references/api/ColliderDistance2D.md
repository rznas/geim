<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ColliderDistance2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the separation or overlap of two Collider2D.

The ColliderDistance2D primarily defines a point on the exterior of each Collider2D along with the distance between those two points. The distance between them can be positive indicating that the Collider2D are separated (not overlapped), zero indicating that they are touching (but not overlapped) or negative indicating that they are overlapped.

A normal is provided that is a normalized vector that points from pointB to pointA. This vector, when scaled with the distance, provide a vector that can be used to move the Collider2D so that they are no longer overlapped (if the distance is negative) or so they are touching (if the distance is positive).

A common use-case for this is solving overlaps between two Collider2D, particularly when attached to a Rigidbody2D set to be RigidbodyType2D.Kinematic.

Additional resources: Physics2D.Distance, Collider2D.Distance and Rigidbody2D.Distance.

### Properties

| Property | Description |
| --- | --- |
| distance | Gets the distance between two colliders. |
| isOverlapped | Gets whether the distance represents an overlap or not. |
| isValid | Gets whether the distance is valid or not. |
| normal | A normalized vector that points from pointB to pointA. |
| pointA | A point on a Collider2D that is a specific distance away from pointB. |
| pointB | A point on a Collider2D that is a specific distance away from pointA. |
