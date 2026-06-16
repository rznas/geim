<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StreamingController.SetPreloading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| timeoutSeconds | Optional timeout before stopping preloading. Set to 0.0f when no timeout is required. |
| activateCameraOnTimeout | Set to True to activate the connected Camera component when timeout expires. |
| disableCameraCuttingFrom | Camera to deactivate on timeout (if Camera.activateCameraOnTime is True). This parameter can be null. |

### Description

Initiate preloading of streaming data for this camera.

Activate texture streaming at this camera location. This is for preloading texture mipmaps prior to a Camera being activated a short time later. When the Camera component on the same GameObject becomes enabled, preloading will be disabled. Preloading can be manually disabled with StreamingController.CancelPreloading

The function will do nothing if called when the associated Camera is already enabled.
