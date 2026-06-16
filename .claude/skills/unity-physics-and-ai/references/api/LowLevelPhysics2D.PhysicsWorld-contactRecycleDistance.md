<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-contactRecycleDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The contact recycle distance, in meters. Setting this to zero disables contact point recycling. Contact recycling reuses contact points across simulation time-steps when the relative movement is small. This feature improves stability and performance by around 25% (approximately). Contact points are not recalculated until shapes move more than 5cm (default) relative to each other. Contact recycling skips some updates such as friction, pre-solve (etc) until the contacts are no longer recycled.
