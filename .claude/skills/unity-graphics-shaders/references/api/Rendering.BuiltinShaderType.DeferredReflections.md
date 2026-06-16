<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderType.DeferredReflections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shader used for deferred reflection probes.

When using deferred shading, reflection probes are rendered in "deferred" way by default. All deferred objects in the Scene get per-pixel reflection probes that are calculated using this shader.

When setting deferred reflections shader to "disabled" (BuiltinShaderMode.Disabled), reflection probes are done in per-object way, similar to how forward rendering computes them.

Additional resources: GraphicsSettings.SetShaderMode, BuiltinShaderMode, Graphics Settings.
