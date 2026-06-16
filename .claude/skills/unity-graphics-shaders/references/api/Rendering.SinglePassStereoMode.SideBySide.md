<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SinglePassStereoMode.SideBySide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render stereo to the left and right halves of a single, double-width render target.

In side-by-side single-pass stereo rendering, the rendering pipeline traverses the scene graph only once while issuing two draw calls for each render node. Each eye is rendered to one side of the render target. The main render target must be a twice as wide as a single-eye target. Scene culling and shadow map rendering is shared between both eyes. Side-by-side rendering is significantly faster than multi-pass rendering for VR, but is a little slower than instancing or multiview modes.
