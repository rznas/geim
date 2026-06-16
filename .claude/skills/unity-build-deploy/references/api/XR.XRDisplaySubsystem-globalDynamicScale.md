<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem-globalDynamicScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current scale factor applied to dynamically scalable eye textures when XR dynamic resolution is active.

The scale factor is determined by the device and can change from frame to frame. If hardware dynamic resolution is turned off or not supported by the device, the scale factor is 1.0.

Normally, dynamic resolution is handled automatically by the render pipeline. If you are implementing a custom pipeline or custom render pass, then your implementation must handle dynamic scaling of eye textures appropriately.
