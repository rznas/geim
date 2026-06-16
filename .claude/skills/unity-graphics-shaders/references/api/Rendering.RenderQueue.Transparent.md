<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderQueue.Transparent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This render queue is rendered after Geometry and AlphaTest, in back-to-front order. This value corresponds to a render queue of 3000.

Anything alpha-blended (i.e. shaders that don’t write to depth buffer) should go here (glass, particle effects).

Additional resources: Material.renderQueue, Shader.renderQueue, subshader tags.
