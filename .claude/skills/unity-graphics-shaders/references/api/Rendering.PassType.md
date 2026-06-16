<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PassType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shader pass type for Unity's lighting pipeline.

This corresponds to "LightMode" tag in the shader pass, see Pass tags.

### Properties

| Property | Description |
| --- | --- |
| Normal | Regular shader pass that does not interact with lighting. |
| Vertex | Legacy vertex-lit shader pass. |
| VertexLM | Legacy vertex-lit shader pass, with mobile lightmaps. |
| ForwardBase | Forward rendering base pass. |
| ForwardAdd | Forward rendering additive pixel light pass. |
| ShadowCaster | Shadow caster & depth texure shader pass. |
| Deferred | Deferred Shading shader pass. |
| Meta | Shader pass used to generate the albedo and emissive values used as input to lightmapping. |
| MotionVectors | Motion vector render pass. |
| ScriptableRenderPipeline | Custom scriptable pipeline. |
| ScriptableRenderPipelineDefaultUnlit | Custom scriptable pipeline when lightmode is set to default unlit or no light mode is set. |
| GrabPass | Grab Pass. Use this when you want to detect the type of the Grab Pass compared to other passes using the Normal type. Otherwise use Normal. |
