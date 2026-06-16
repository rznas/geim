<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightEvent.AfterShadowMapPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

After shadowmap pass is rendered.

When this event is triggered, all shadow casters in pass have already been rendered, and current render target is still the shadowmap.

This event differs from LightEvent.AfterShadowMap in that for light types that render shadows using multiple passes, the event triggers after each pass. Additional control over when this event triggers can be achieved by passing a ShadowMapPass mask to Light.AddCommandBuffer.
