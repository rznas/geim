<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.GetJointThresholdCallbackTargets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**JointThresholdCallbackTargets** The joint callback target results. This must be disposed of after use otherwise leaks will occur. The exception to this is if there are no targets returned.

### Description

Get all current PhysicsWorld.jointThresholdEvents where either of the PhysicsJoint involved are valid (see PhysicsJoint.isValid) and have a callback target assigned (see PhysicsJoint.callbackTarget).
