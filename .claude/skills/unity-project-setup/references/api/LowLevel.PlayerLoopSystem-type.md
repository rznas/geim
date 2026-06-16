<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevel.PlayerLoopSystem-type.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A System.Type used to identify a Player loop system and label it in the Profiler.

Use the `type` property to identify and retrieve a particular default PlayerLoopSystem when iterating over the default or current Player loop. Custom Player loop systems must have this property to identify them, but it can be an empty class. Valid struct types for default Player loop systems are available under the `UnityEngine.PlayerLoop` namespace.
