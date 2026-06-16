<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-appliedRenderViewportScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fetches how much of the allocated display texture is applied by the active stereo device at the current frame.

The scale factor is fetched by the device and can change from frame to frame. If this value is observed during the gameplay logic it refers to the applied viewport scale of previous frame, if observed during rendering logic it is related to the current frame. XRSettings.renderViewportScale can influence the scale factor but the XR device can decide to ignore or change it.
