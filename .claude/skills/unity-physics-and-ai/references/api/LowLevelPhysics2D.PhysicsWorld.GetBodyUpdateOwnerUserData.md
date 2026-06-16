<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.GetBodyUpdateOwnerUserData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsUserData>** A Native Array containing all PhysicsBody.ownerUserData for each BodyUpdateEvent returned with PhysicsWorld.bodyUpdateEvents.

### Description

Get all PhysicsBody.ownerUserData assigned to each PhysicsBody returned with PhysicsWorld.bodyUpdateEvents. The Native Array returned will be of the same length and be ordered the same as the BodyUpdateEvent returned with PhysicsWorld.bodyUpdateEvents. Any PhysicsBody that are not valid will return a default PhysicsUserData.
