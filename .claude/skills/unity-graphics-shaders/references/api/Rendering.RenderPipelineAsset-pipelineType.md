<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineAsset-pipelineType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a RenderPipeline type associated with the given RenderPipelineAsset instance.

The result is based on the generic parameter type of RenderPipelineAsset<T0>. If a custom Render Pipeline Asset does not inherit from the RenderPipelineAsset<T0> generic class, this method returns null by default.
