<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingOptions.DisablePerObjectCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When this flag is set, Unity does not perform per-object culling.

By default, when using a Scriptable Render Pipeline, Unity performs per-object culling for Lights and Reflection Probes. This means that Unity pairs visible Lights and Reflection Probes with visible Renderers in their zone of influence when it performs a culling operation.

When this flag is set, Unity does not perform per-object culling of Lights or Reflection Probes. If you are creating a custom Scriptable Render Pipeline that does not use per-object lighting, set this flag to avoid wasted CPU operations.

Default value: unset.

Additional resources: ScriptableCullingParameters.cullingOptions, ScriptableRenderContext.Cull, CullingResults.
