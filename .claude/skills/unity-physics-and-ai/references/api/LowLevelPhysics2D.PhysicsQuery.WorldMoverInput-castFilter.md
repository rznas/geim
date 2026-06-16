<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.WorldMoverInput-castFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The filter to use for checking casts. The advantage of a separate filter to PhysicsQuery.WorldMoverInput.overlapFilter is that you can check for overlaps in a different way to what you can hit when moving. For instance, you may or may not want to check for other movers in they existing in the world when moving but you want to always check them for overlap initially.
