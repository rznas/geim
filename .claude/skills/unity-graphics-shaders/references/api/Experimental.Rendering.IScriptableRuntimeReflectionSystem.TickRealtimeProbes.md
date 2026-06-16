<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.IScriptableRuntimeReflectionSystem.TickRealtimeProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Whether a reflection probe was updated.

### Description

Update the reflection probes.

The implementation of this method should update the real-time reflection probes. This is called once per frame during the offscreen camera render.

If you use the built-in ReflectionProbe component and rely on the built-in culling system (see ScriptableCullingParameters), you must call ReflectionProbe.UpdateCachedState to update and provide the appropriate probe information to the culling system.
