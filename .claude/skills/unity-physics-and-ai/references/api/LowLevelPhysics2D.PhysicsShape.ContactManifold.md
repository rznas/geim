<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ContactManifold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A contact manifold describes the contact points between colliding shapes. Speculative collision is used so some contact points may be separated, a property available per-contact.

### Properties

| Property | Description |
| --- | --- |
| normal | The unit normal vector in world space, points from shape A to bodyB |
| pointCount | The number of manifold points available, in the range [0, 2]. |
| points | The manifold points, up to two are possible. |
| rollingImpulse | Angular impulse applied for rolling resistance (N " m " s = kg * m^2 / s). |
| speculativePointCount | The number of manifold points available that are speculative, in the range [0, 2]. |
| this[int] | Indexer to access the manifold points. |
