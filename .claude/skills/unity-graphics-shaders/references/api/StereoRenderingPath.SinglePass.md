<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StereoRenderingPath.SinglePass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Single pass VR rendering ( via double-wide render texture ).

This is a faster rendering path for VR compared to the StereoRenderingPath.MultiPass. The speed is achieved by traversing the Scene graph only once while issuing two draw calls for each render node.

The main render target has to be a double wide render target. Scene culling & shadow map rendering is shared between the eyes.

Additional resources: PlayerSettings.stereoRenderingPath.
