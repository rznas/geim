<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-rawRenderQueue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Raw render queue of this material.

This property returns the render queue override value of this material. The value returned is -1 if no override has been specified (i.e. the actual renderQueue value used for rendering will be Shader.renderQueue), or a custom value in [0..5000] range if set.

For purposes of getting the actual render queue value used for rendering, refer to Material.renderQueue.

Additional resources: Material.renderQueue, Shader.renderQueue, RenderQueue enum, subshader tags.
