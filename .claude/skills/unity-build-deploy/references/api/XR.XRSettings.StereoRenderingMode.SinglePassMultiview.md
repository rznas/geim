<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.StereoRenderingMode.SinglePassMultiview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is a OpenGL optimized version of the XRSettings.StereoRenderingMode.SinglePassInstanced mode.

The scene graph is only traversed once and a single instanced draw call is issued for each render node, thus reducing the bandwidth required to render the scene. Scene culling and shadow map rendering is shared between both eyes. The main render target must be an array of render targets. Special hardware support is required for this mode to run. Depending on their graphics capabilities, certain GPUs will run this stereo rendering mode and others will run XRSettings.StereoRenderingMode.SinglePassInstanced. GPUs that support neither of those modes will fall back to XRSettings.StereoRenderingMode.MultiPass. See the manual for how to get the most out of instanced rendering. Additional resources: XRSettings.stereoRenderingMode.
