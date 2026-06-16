<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderMode.Disabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Don't use any shader, effectively disabling the functionality.

This is primarily used as a build size optimization, for example if you know the project never uses deferred shading, you could disable support for it in Graphics Settings and save some build data size.

When BuiltinShaderType.DeferredReflections is disabled, then in deferred shading the reflection probes are done in per-object way, instead of a separate deferred per-pixel reflections pass.

Additional resources: GraphicsSettings.SetShaderMode, BuiltinShaderType, Graphics Settings.
