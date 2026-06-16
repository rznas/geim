<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EdgeCollider2D-adjacentEndPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the position of a virtual point adjacent to the end point of the EdgeCollider2D.

An EdgeCollider2D is made up of contiguous edges defined by a set of points adjacent to each other. When a collision occurs with a point along the Collider, Unity uses the two edges the point makes with its adjacent points to form a collision normal, and calculate the collision response. This produces a continuous edge chain and an uninterrupted collision surface.

However, when a collision occurs with the start or end point of the Edge Collider, Unity is unable to form a collision normal with a single edge and so the collision normal becomes the direction of motion of the collision.

This property defines a virtual point that is adjacent to the end point to create a "virtual edge" from which Unity calculates and forms a collision normal. This point is only used when useAdjacentEndPoint it set to true. The "virtual edge” formed cannot be collided with and only a collision normal is used

An important and useful use case for this feature is to allow multiple EdgeCollider2Ds to connect together by specifying adjacentStartPoint and adjacentEndPoint that overlap the points of other EdgeCollider2Ds. This produces a seamless transition for collisions when moving across multiple EdgeCollider2Ds.
