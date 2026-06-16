<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| proj | Projection (camera to clip space) matrix. |

### Description

Add a command to set the projection matrix.

The projection matrix is the matrix that transforms from view space into homogeneous clip space.

When you want to set both the view and projection matrices, it's more efficient to use SetViewProjectionMatrices because it sets both in one CommandBuffer command.

Additional resources: SetViewMatrix, SetViewProjectionMatrices, Camera.projectionMatrix, Matrix4x4.Perspective.
