<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCaptureFrame.UploadImageDataToTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetTexture | The target texture that the captured image data will be copied to. |

### Description

This method will copy the captured image data into a user supplied texture for use in Unity.

You may only use this method if you specified the **BGRA32** format in your CameraParameters. Keep in mind that this operation will happen on the main thread and therefore be slow. The captured image will also appear flipped on the HoloLens. You can reorient the image by using a custom shader.
