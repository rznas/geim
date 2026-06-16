<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScreenCapture.StereoScreenCaptureMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumeration specifying the eye texture to capture when using ScreenCapture.CaptureScreenshot and when stereo rendering is enabled.

The CaptureScreenshot method will default to StereoScreenCaptureMode.LeftEye. When captured in stereo mode, the resolution of the screenshot will be the size of the game window on the main display.

### Properties

| Property | Description |
| --- | --- |
| LeftEye | The Left Eye is captured. This is the default setting for the CaptureScreenshot method. |
| RightEye | The Right Eye is captured. |
| BothEyes | Both the left and right eyes are captured and composited into one image. |
| MotionVectors | Both the left and right eyes are captured and composited into one image, showing the motion vectors. |
