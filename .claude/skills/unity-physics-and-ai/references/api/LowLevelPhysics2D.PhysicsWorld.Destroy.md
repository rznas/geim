<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ownerKey | Optional owner key returned when using PhysicsWorld.SetOwner. |

### Returns

**bool** If the world was destroyed or not.

### Description

Destroy a world, destroying all objects contained within it such as all PhysicsBody and attached PhysicsShape and PhysicsJoint. If the object is owned with PhysicsWorld.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the world will not be destroyed. You cannot destroy the PhysicsWorld.defaultWorld as it is permanently owned by Unity itself.
