<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe.UpdateCachedState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Updates the culling system with the ReflectionProbe's current state. This ensures that Unity correctly culls the ReflectionProbe during rendering if you implement your own runtime reflection system.

By default, Unity culls ReflectionProbes automatically as part of the built-in Scriptable Runtime Reflection System. However, if you implement your own reflection system, you need to call this function in your implementation of ScriptableRuntimeReflectionSystem.TickRealtimeProbes. Call this method once per frame and before the rendering starts to ensure Unity correctly culls ReflectionProbes during rendering.
