<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.WorldMoverInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The world mover arguments used by the world mover.

### Static Properties

| Property | Description |
| --- | --- |
| defaultInput | Create a default world mover input. |

### Properties

| Property | Description |
| --- | --- |
| castFilter | The filter to use for checking casts. The advantage of a separate filter to PhysicsQuery.WorldMoverInput.overlapFilter is that you can check for overlaps in a different way to what you can hit when moving. For instance, you may or may not want to check for other movers in they existing in the world when moving but you want to always check them for overlap initially. |
| collisionResults | Whether to return all the individual MoverCollision results for all iterations or not. All the collisions will be returned in the WorldMoverResult results. |
| geometry | The mover geometry to use when checking for overlaps and casting. |
| maxIterations | Solving a movement is iterative and will continue until the maximum allowed iterations has been achieve, controlled by this value. The maximum allowed iterations will not always be used and solving will cease if the iteration movement falls below the square of the PhysicsQuery.WorldMoverInput.moveTolerance. |
| moveTolerance | Solving a movement will cease if the movement falls below the square of this value. By default, this value is extremely small. Too high a value will result in solving ceasing too quickly, too small will result in all allowed PhysicsQuery.WorldMoverInput.maxIterations being used. |
| overlapFilter | The filter to use for checking overlaps. |
| targetPosition | The position desired for the mover to achieve. This is typically calculated using the current velocity, any gravity required and time-integrated by the simulation time-step (delta-time). |
| transform | The transform used to transform the geometry i.e. the mover starting pose. |
| velocity | The velocity used to calculate the PhysicsQuery.WorldMoverInput.targetPosition. This is not used for movement but it will be returned, modified by any surfaces hit. This velocity can then be used in subsequent inputs for movement. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsQuery.WorldMoverInput | Create a default world mover input. |
