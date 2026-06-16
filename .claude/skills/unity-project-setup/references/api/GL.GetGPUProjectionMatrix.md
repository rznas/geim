<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.GetGPUProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| proj | Source projection matrix. |
| renderIntoTexture | Will this projection be used for rendering into a RenderTexture? |

### Returns

**Matrix4x4** Adjusted projection matrix for the current graphics API.

### Description

Compute GPU projection matrix from camera's projection matrix.

In Unity, projection matrices follow OpenGL convention. However on some platforms they have to be transformed a bit to match the native API requirements. Use this function to calculate how the final projection matrix will be like. The value will match what comes as `UNITY_MATRIX_P` matrix in a shader.

The `renderIntoTexture` value should be set to true if you intend to render into a RenderTexture with this projection matrix. On some platforms it affects how the final matrix will look like.

Additional resources: Camera.projectionMatrix, Matrix4x4.Perspective, Platform differences, Built-in shader variables.
