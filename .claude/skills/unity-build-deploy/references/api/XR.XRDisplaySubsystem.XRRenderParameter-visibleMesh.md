<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRRenderParameter-visibleMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the area in screen-space that is visible on the XR Display.

The visibility mesh contains vertices outlining the visible area of the XR display in screen-space coordinates. The mesh encompasses both eyes under single-pass instanced rendering and one eye under multi-pass rendering (a different eye for each pass).

When available, the Unity post-processing stack uses the visibility mesh to avoid processing pixels that are outside the visible display area of the XR headset. 

You can use this mesh to prevent your screen-space shaders from drawing to areas that are outside the effective display area. For example, if you are performing your own post-processing step, you might be able to optimize it by specifying the screen area in which the post-processing effect should be calculated. If a device or platform does not provide a visibility mesh, then this XR render parameter field is `null`.
