<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.GetContactCallbackTargets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ContactCallbackTargets** The contact callback target results. This must be disposed of after use otherwise leaks will occur. The exception to this is if there are no targets returned.

### Description

Get all current PhysicsWorld.contactBeginEvents and PhysicsWorld.contactEndEvents where either of the PhysicsShape involved are valid (see PhysicsShape.isValid) and have a callback target assigned (see PhysicsShape.callbackTarget).
