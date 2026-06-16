<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.DestroyBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapes | The shapes to destroy. |
| updateBodyMass | Whether to update the body mass configuration. Not doing so is faster, especially when destroying multiple shapes. |

### Description

Destroy a batch of shapes, destroying all Contact the shapes are involved in. Any invalid shapes will be ignored including chain segment shapes created via a PhysicsChain (the chain must be destroyed)." Owned shapes will produce a warning and will not be destroyed (See PhysicsShape.SetOwner). See MassConfiguration.
