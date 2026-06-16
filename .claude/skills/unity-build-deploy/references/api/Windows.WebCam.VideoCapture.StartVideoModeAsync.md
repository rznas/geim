<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.VideoCapture.StartVideoModeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| setupParams | The various settings that should be applied to the web camera. |
| audioState | Indicates how audio should be recorded. |
| onVideoModeStartedCallback | This callback will be invoked once video mode has been activated. |

### Description

Asynchronously starts video mode.

Activates the web camera with the settings specified in CameraParameters. Only one VideoCapture instance can start the video mode at any given time. After starting the video mode, you can record videos via VideoCapture.StartRecordingAsync. Video mode can impact performance, so make sure to call VideoCapture.StopVideoModeAsync when you are done recording.
