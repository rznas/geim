<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-collisionDetectionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody's collision detection mode.

Use this to set up a Rigidbody for continuous collision detection. You can use continuous collision detection to prevent fast moving objects from passing through other objects without detecting collisions. 

For best results, set this value to CollisionDetectionMode.ContinuousDynamic for fast moving objects. For other objects which these need to collide with, set it to CollisionDetectionMode.Continuous. These two options impact physics performance. Alternatively, you can use CollisionDetectionMode.ContinuousSpeculative, which has less of an impact on performance and can also be used on kinematic objects. If you don't have issues with collisions of fast objects, leave it set to the default value of CollisionDetectionMode.Discrete.

Continuous Collision Detection is only supported for Rigidbodies with Sphere-, Capsule- or BoxColliders. Additional resources: CollisionDetectionMode.
