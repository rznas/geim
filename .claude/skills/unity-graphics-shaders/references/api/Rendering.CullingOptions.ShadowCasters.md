<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingOptions.ShadowCasters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When this flag is set, Unity culls shadow casters as part of the culling operation.

Default value: set, if your project uses the Scriptable Render Pipeline.

If your project uses the Built-in Render Pipeline, this value is unset if QualitySettings.shadows is set to ShadowQuality.Disable; otherwise, it is set. Note that changing this value has no effect in the Built-in Render Pipeline.

Additional resources: ScriptableCullingParameters.cullingOptions, ScriptableRenderContext.Cull, CullingResults.
