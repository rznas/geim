<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCaptureFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information captured from the web camera.

Information captured can include the image has well as spatial data.

### Properties

| Property | Description |
| --- | --- |
| dataLength | The length of the raw IMFMediaBuffer which contains the image captured. |
| hasLocationData | Specifies whether or not spatial data was captured. |
| pixelFormat | The raw image data pixel format. |

### Public Methods

| Method | Description |
| --- | --- |
| CopyRawImageDataIntoBuffer | Will copy the raw IMFMediaBuffer image data into a byte list. |
| Dispose | Disposes the PhotoCaptureFrame and any resources it uses. |
| GetUnsafePointerToBuffer | Provides a COM pointer to the native IMFMediaBuffer that contains the image data. |
| TryGetCameraToWorldMatrix | This method will return the camera to world matrix at the time the photo was captured if location data if available. |
| TryGetProjectionMatrix | This method will return the projection matrix at the time the photo was captured if location data if available. |
| UploadImageDataToTexture | This method will copy the captured image data into a user supplied texture for use in Unity. |
