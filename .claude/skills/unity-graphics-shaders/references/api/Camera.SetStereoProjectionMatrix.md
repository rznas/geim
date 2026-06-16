<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.SetStereoProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic eye whose projection matrix needs to be set. |
| matrix | The matrix to be set. |

### Description

Sets a custom projection matrix for a specific stereoscopic eye.

In general, you should use the projection matrices provided by the XRDisplaySubsystem for accurate stereoscopic rendering. However, when needed for specific scenarios, you can override the projection matrices to achieve specific effects. For example, you would need to set custom projection and view matrices to implement binoculars in VR.

Call Camera.ResetStereoProjectionMatrices to revert the camera back to using the projection matrices provided by the XRDisplaySubsystem .
