<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.GetStereoProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic eye whose projection matrix needs to be returned. |

### Returns

**Matrix4x4** The projection matrix of the specified stereoscopic eye.

### Description

Gets the projection matrix of a specific left or right stereoscopic eye.

By default, the XRDisplaySubsystem sets the projection to the matrix provided by the XR provider plug-in. You can change the projection matrix for an eye with Camera.SetStereoProjectionMatrix and revert both eyes back to the default projection with Camera.ResetStereoProjectionMatrices.

In Play mode, the projection matrix for an eye can be reported as the identity matrix for the first few frames until the XRDisplaySubsystem is ready to render.

Additional resources: XRDisplaySubsystem.XRRenderParameter.projection.
