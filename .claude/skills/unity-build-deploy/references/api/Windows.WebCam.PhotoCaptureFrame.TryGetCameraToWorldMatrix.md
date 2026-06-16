<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCaptureFrame.TryGetCameraToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cameraToWorldMatrix | A matrix to be populated by the Camera to world Matrix. |

### Returns

**bool** True if a valid matrix is returned or false otherwise. This will be false if the frame has no location data.

### Description

This method will return the camera to world matrix at the time the photo was captured if location data if available.

If location data is unavailable then the camera to world matrix will be set to the identity matrix.
