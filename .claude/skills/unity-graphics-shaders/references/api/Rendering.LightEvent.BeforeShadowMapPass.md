<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightEvent.BeforeShadowMapPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Before shadowmap pass is rendered.

When this event is triggered, the shadowmap render target has been set and cleared, but shadow casters in the pass have not yet been rendered.

This event differs from LightEvent.BeforeShadowMap in that for light types that render shadows using multiple passes, the event triggers before each pass. Additional control over when this event triggers can be achieved by passing a ShadowMapPass mask to Light.AddCommandBuffer.
