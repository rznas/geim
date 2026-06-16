<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.GetStereoViewMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic eye whose view matrix needs to be returned. |

### Returns

**Matrix4x4** The view matrix of the specified stereoscopic eye.

### Description

Gets the left or right view matrix of a specific stereoscopic eye.

By default, the XRDisplaySubsystem sets the view to the matrix provided by the XR provider plug-in. You can change the view matrix for a stereo eye with Camera.SetStereoViewMatrix and revert both eyes back to the default view with Camera.ResetStereoViewMatrices.

In Play mode, the view matrix for a stereo eye can be reported as the identity matrix for the first few frames until the XRDisplaySubsystem is ready to render.

Additional resources: XRDisplaySubsystem.XRRenderParameter.view.
