<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ContactManifold.ManifoldPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains all the detail related to the geometry and dynamics of the contact. You may use the ManifoldPoint.totalNormalImpulse to determine if there was an interaction during the time step.

### Properties

| Property | Description |
| --- | --- |
| anchorA | Location of the contact point relative to shapeA's origin in world space. |
| anchorB | Location of the contact point relative to shapeB's origin in world space. |
| id | Uniquely identifies a contact point between two shapes. This should not be confused with PhysicsShape.ContactId. |
| normalImpulse | The impulse along the manifold normal vector. |
| normalVelocity | Relative normal velocity pre-solve. Used for hit events. If the normal impulse is zero then there was no hit. Negative means shapes are approaching. |
| persisted | Did this contact point exist the previous step? |
| point | Location of the contact point in world space. Subject to precision loss at large coordinates. This point lags behind when contact recycling is used. Preference should be to use anchorA and/or anchorB for game logic. This is also known as the "clip" point. |
| separation | The separation of the contact point, negative if penetrating. |
| speculative | Is the contact point speculative i.e. not currently interacting? |
| tangentImpulse | The friction impulse. |
| totalNormalImpulse | The total normal impulse applied across sub-stepping and restitution. This includes the warm starting impulse, the sub-step delta impulse, and the restitution impulse. This can be used to identify speculative contact points that had an interaction during the simulation step. |
