<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.BodyUpdateEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event produced by a PhysicsBody that indicates the simulation changed the body in one of the following ways: - The body transform was changed. - The body fell asleep. See PhysicsWorld.bodyUpdateEvents.

### Properties

| Property | Description |
| --- | --- |
| body | The body this event relates to. |
| fellAsleep | Whether the body fell asleep or not. |
| transform | The current transform of the body. |
