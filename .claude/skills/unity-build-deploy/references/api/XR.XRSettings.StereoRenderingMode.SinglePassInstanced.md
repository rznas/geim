<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.StereoRenderingMode.SinglePassInstanced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is an optimized version of the XRSettings.StereoRenderingMode.SinglePass mode.

The scene graph is only traversed once and a single instanced draw call is issued for each render node, thus reducing the bandwidth required to render the scene. Scene culling and shadow map rendering is shared between both eyes. The main render target must be an array of render targets. Special hardware support is required for this mode to run. See the manual for how to get the most out of instanced rendering. Additional resources: XRSettings.stereoRenderingMode.
