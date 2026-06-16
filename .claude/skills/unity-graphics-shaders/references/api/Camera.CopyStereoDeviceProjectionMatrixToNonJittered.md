<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.CopyStereoDeviceProjectionMatrixToNonJittered.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic eye whose non-jittered projection matrix will be sourced from the VR SDK. |

### Description

Sets the non-jittered projection matrix, sourced from the VR SDK.

With traditional rendering, the application is responsible for generating the non-jittered and jittered projection matrices. However, in VR rendering, the projection matrices are sourced from the VR SDK. Therefore, if the intention is to jitter the VR projection matrices, that would indicate the non-jittered projection matrices are the ones provided by the VR SDK. This API provides this functionality by copying the VR SDK projection matrices directly into the non-jittered stereo projection matrix set.

Use Camera.GetNonJitteredStereoProjectionMatrix to get the non-jittered stereo projection matrices.

Use Camera.SetStereoProjectionMatrix and Camera.GetStereoProjectionMatrix to set and get the jittered stereo projection matrices, respectively.

For descriptions of jittered projection rendering see: Camera.nonJitteredProjectionMatrix.
