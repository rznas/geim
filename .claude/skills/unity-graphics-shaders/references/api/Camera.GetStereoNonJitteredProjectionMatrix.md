<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.GetStereoNonJitteredProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic eye whose non-jittered projection matrix needs to be returned. |

### Returns

**Matrix4x4** The non-jittered projection matrix of the specified stereoscopic eye.

### Description

Gets the non-jittered projection matrix of a specific left or right stereoscopic eye.

If you have configured the non-jittered stereo projection matrices with Camera.CopyStereoDeviceProjectionMatrixToNonJittered, this function will return the VR device's original stereo projection matrices. If you have not used Camera.CopyStereoDeviceProjectionMatrixToNonJittered, this will return the same matrix as Camera.GetStereoProjectionMatrix.

Use Camera.GetStereoProjectionMatrix to get the jittered stereo projection matrices.

For descriptions of jittered projection rendering see: Camera.nonJitteredProjectionMatrix.
