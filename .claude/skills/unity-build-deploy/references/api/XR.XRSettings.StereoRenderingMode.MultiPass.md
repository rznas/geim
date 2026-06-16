<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.StereoRenderingMode.MultiPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the reference stereo rendering path for VR.

The scene graph is traversed twice, rendering one eye at a time. Scene culling and shadow map rendering can be shared between both eyes. If the device hardware does not support other rendering modes, Unity will fall back to this stereo rendering mode.

Additional resources: XRSettings.stereoRenderingMode.
