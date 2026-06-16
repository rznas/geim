<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.SetBatchVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| batch | The batch of bodies and values to set. |

### Description

Set the velocity for a batch of PhysicsBody using a span of BatchVelocity. If invalid values are passed to the batch, they will simply be ignored. For best performance, the bodies contained in the batch should all be part of the same PhysicsWorld. If the bodies in the batch are not contained in the same PhysicsWorld, the batch should be sorted by the PhysicsWorld the bodies are contained within.
