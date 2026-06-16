<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.StereoRenderingMode.SinglePass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is a faster rendering path for VR than XRSettings.StereoRenderingMode.MultiPass.

The speed boost is achieved by traversing the scene graph only once while issuing two draw calls for each render node. The main render target must be a double wide render target. Scene culling and shadow map rendering is shared between both eyes.

Additional resources: XRSettings.stereoRenderingMode.
