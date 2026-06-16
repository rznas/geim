<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.StartPhotoModeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| setupParams | The various settings that should be applied to the web camera. |
| onPhotoModeStartedCallback | This callback will be invoked once photo mode has been activated. |

### Description

Asynchronously starts photo mode.

Activates the web camera with the various settings specified in CameraParameters. Only one PhotoCapture instance can start the photo mode at any given time. After starting the photo mode, you make take photos via PhotoCapture.TakePhotoAsync. While in photo mode, more power will be consumed so make sure that you call PhotoCapture.StopPhotoModeAsync when you are done taking photos.
