<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StereoRenderingPath.Instancing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Single pass VR rendering ( via instanced rendering ).

This is an optimization over the StereoRenderingPath.SinglePass method. The Scene graph is traversed only once and there will be only one instanced draw call issued for each render node thus reducing the bandwidth required to render the Scene.

This method is compatible with the regular instanced. Special hardware support is required for this to run. The main render target has to be an array render target. Scene culling & shadow map rendering is shared between the eyes.

Additional resources: PlayerSettings.stereoRenderingPath.
