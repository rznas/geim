<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.SendJointThresholdCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Send all current PhysicsWorld.jointThresholdEvents where the PhysicsJoint involved are valid (see PhysicsJoint.isValid) and have a callback target assigned (see PhysicsJoint.callbackTarget). These events will only be created if the joint exceeds its PhysicsJoint.forceThreshold or PhysicsJoint.torqueThreshold. Only callback targets that implement IJointThresholdCallback will be called. This will be called automatically if PhysicsWorld.autoJointThresholdCallbacks is true. This must be called on the main thread.
