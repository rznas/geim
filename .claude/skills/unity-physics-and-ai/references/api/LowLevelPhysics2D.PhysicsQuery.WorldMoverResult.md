<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.WorldMoverResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The world mover result used by the world mover.

### Properties

| Property | Description |
| --- | --- |
| collisionResults | All the individual MoverCollision results for all iterations. Multiple non-unique contacts for the same PhysicsShape may be returned due to iterations, overlapping and casting. This is only populated if PhysicsQuery.WorldMoverInput.collisionResults is true. |
| transform | The final transform the mover finished at. The transform rotation is always the same as the PhysicsQuery.WorldMoverInput.transform provided. |
| velocity | The final velocity the mover finished at. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose of any allocated memory for the collision results. |
