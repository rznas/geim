<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.StereoRenderingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum type signifying the different stereo rendering modes available.

To find out what the current stereo rendering mode used in your Unity project at runtime, use XRSettings.stereoRenderingMode. This method returns a value of type StereoRenderingMode.

### Properties

| Property | Description |
| --- | --- |
| MultiPass | This is the reference stereo rendering path for VR. |
| SinglePass | This is a faster rendering path for VR than XRSettings.StereoRenderingMode.MultiPass. |
| SinglePassInstanced | This is an optimized version of the XRSettings.StereoRenderingMode.SinglePass mode. |
| SinglePassMultiview | This is a OpenGL optimized version of the XRSettings.StereoRenderingMode.SinglePassInstanced mode. |
