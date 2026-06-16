<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| updateBodyMass | Optional flag indicating if the body mass configuration should be updated. Not doing so is faster, especially when destroying multiple shapes. |
| ownerKey | Optional owner key returned when using PhysicsShape.SetOwner. |

### Returns

**bool** If the shape was destroyed or not.

### Description

Destroy the shape, destroying all Contact the shape is involved in. If the object is owned with PhysicsShape.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the shape will not be destroyed. The lifetime of the specified owner object is not linked to this shape i.e. this shape will still be owned by the owner object, even if it is destroyed. Shapes of type Chain cannot be destroyed here, they must be destroyed by their owning chain. See PhysicsChain and MassConfiguration.
