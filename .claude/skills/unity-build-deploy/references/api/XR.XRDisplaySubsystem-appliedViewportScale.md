<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem-appliedViewportScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The portion of the allocated display texture used by the active stereo device for the current frame.

The scale factor is fetched from the device and can change from frame to frame. If you access this value during gameplay logic (LateUpdate or earlier), the value is the applied viewport scale of previous frame. If you access this value during rendering logic (OnPreCull or later), the value is for the current frame.

 The XRDisplaySubsystem.scaleOfAllViewports setting can influence the scale factor, but the XR device can decide to ignore or change it.

 This property can range between 0 and 1. For example, a value of 0.5 indicates that one quarter of the allocated texture will be used for the display (half the width and half the height). The origin of the area used depends on the graphics API. For example, Vulkan and DirectX use the top-left portion of the texture, whereas OpenGL uses the bottom-left.
