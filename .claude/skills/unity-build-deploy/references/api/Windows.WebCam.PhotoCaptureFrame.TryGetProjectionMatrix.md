<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCaptureFrame.TryGetProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nearClipPlane | The near clip plane distance. |
| farClipPlane | The far clip plane distance. |
| projectionMatrix | A matrix to be populated by the Projection Matrix. |

### Returns

**bool** True if a valid matrix is returned or false otherwise. This will be false if the frame has no location data.

### Description

This method will return the projection matrix at the time the photo was captured if location data if available.

If the near and far clip values are not specified, then the projection matrix returned will be the raw HoloLens projection matrix. However if the near and far clip values are provided, they will be encoded into the returned projection matrix. The provided near and far clip values will be validated prior to encoding them into the projection matrix. The near clip value will be set to 0.01 if the provided value is less than 0.01. Likewise, if the far clip value is less than the near clip value then the far clip value will be set to the near clip value plus 0.01.

If location data is unavailable then the projection matrix will be set to the identity matrix.
