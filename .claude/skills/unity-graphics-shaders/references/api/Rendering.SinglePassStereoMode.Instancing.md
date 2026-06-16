<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SinglePassStereoMode.Instancing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render stereo using GPU instancing.

In instanced single-pass stereo rendering, the rendering pipeline traverses the scene graph only once and issues a single, instanced draw call for each render node, thus reducing the bandwidth required to render the scene. Scene culling and shadow map rendering is shared between both eyes. The main render target must be an array of render targets.

 Special GPU hardware support is required for this mode to run. Depending on their graphics capabilities, certain GPUs can run this stereo rendering mode and others can run SinglePassStereoMode.Multiview. The two modes are otherwise very similar.
