<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-collisionDetectionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ArticulationBody's collision detection mode.

Use this property to set up an ArticulationBody for continuous collision detection, in order to prevent fast moving objects from passing through other objects without detecting collisions. For best results, set this property to CollisionDetectionMode.ContinuousDynamic for fast moving objects, and set it to CollisionDetectionMode.Continuous for other objects these fast moving objects need to collide with.

Note: These two options have a big impact on the physics engine processing resources. To consume fewer processing resources, you can alternatively use CollisionDetectionMode.ContinuousSpeculative (which you can also use on kinematic objects). However, if you don't have issues with collisions of fast objects, you should leave this property set to the default value CollisionDetectionMode.Discrete.

Restriction: You can use Continuous Collision Detection only for ArticulationBodies with Sphere-, Capsule- or BoxColliders.

 Additional resources: CollisionDetectionMode.
