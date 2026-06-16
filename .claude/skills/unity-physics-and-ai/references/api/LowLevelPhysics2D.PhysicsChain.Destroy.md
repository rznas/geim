<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsChain.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ownerKey | Optional owner key returned when using PhysicsChain.SetOwner. |

### Returns

**bool** If the chain was destroyed or not.

### Description

Destroy the PhysicsChain and all the PhysicsShape.ShapeType.ChainSegment it owns. If the object is owned with PhysicsChain.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the chain will not be destroyed. The lifetime of the specified owner object is not linked to this chain i.e. this chain will still be owned by the owner object, even if it is destroyed. This is the only way to destroy shapes of type PhysicsShape.ShapeType.ChainSegment if they were created by a PhysicsChain.
