<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ownerKey | Optional owner key returned when using PhysicsBody.SetOwner. |

### Returns

**bool** If the body was destroyed or not.

### Description

Destroy a body, destroying all attached PhysicsShape and PhysicsJoint. If the object is owned with PhysicsBody.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the body will not be destroyed.
