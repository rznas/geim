<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderMode.UseCustom.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use custom shader instead of built-in one.

This is useful for implementing custom functionality. For example, by default deferred shading does shading calculations that match the Standard shader lighting model. But if you'd want to use a different BRDF, or use a custom deferred G-buffer layout, then you'd need to override BuiltinShaderType.DeferredShading with your own custom shader.

Additional resources: GraphicsSettings.SetShaderMode, GraphicsSettings.SetCustomMode, BuiltinShaderType, Graphics Settings.
