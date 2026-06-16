<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsHingeJoint.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ownerKey | Optional owner key returned when using PhysicsJoint.SetOwner. |

### Returns

**bool** If the joint was destroyed or not.

### Description

Destroy the joint. If the object is owned with PhysicsJoint.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the joint will not be destroyed.
