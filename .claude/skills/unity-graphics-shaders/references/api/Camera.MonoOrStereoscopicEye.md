<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.MonoOrStereoscopicEye.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Camera eye corresponding to the left or right human eye for stereoscopic rendering, or neither for non-stereoscopic rendering.

A single Camera can render both left and right views in a single frame. Therefore, this enum describes which eye the Camera is currently rendering when returned by Camera.stereoActiveEye during a rendering callback (such as Camera.OnRenderImage), or which eye to act on when passed into a function.

The default value is Camera.MonoOrStereoscopicEye.Left, so Camera.MonoOrStereoscopicEye.Left may be returned by some methods or properties when called outside of rendering if stereoscopic rendering is enabled.

### Properties

| Property | Description |
| --- | --- |
| Left | Camera eye corresponding to stereoscopic rendering of the left eye. |
| Right | Camera eye corresponding to stereoscopic rendering of the right eye. |
| Mono | Camera eye corresponding to non-stereoscopic rendering. |
