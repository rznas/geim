<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Perspective.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fov | Vertical field-of-view in degrees. |
| aspect | Aspect ratio (width divided by height). |
| zNear | Near depth clipping plane value. |
| zFar | Far depth clipping plane value. |

### Returns

**Matrix4x4** The projection matrix.

### Description

Create a perspective projection matrix.

Projection matrices in Unity follow [OpenGL](https://en.wikipedia.org/wiki/OpenGL) convention, i.e. clip space near plane is at `z=-1`, and far plane is at `z=1`.

The returned matrix embeds a z-flip operation whose purpose is to cancel the z-flip performed by the camera view matrix. If the view matrix is an identity or some custom matrix that doesn't perform a z-flip, consider multiplying the third column of the projection matrix (i.e. m02, m12, m22 and m32) by -1.

Note that depending on the graphics API used, projection matrices in shaders can follow different convention, for example the D3D-style clip space has near plane at zero and far plane at one; and "reversed Z" projection has near plane at one and far plane at zero. To calculate projection matrix value suitable for passing to shader variables, use GL.GetGPUProjectionMatrix.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // create projection matrix: 60 FOV, square aspect,
        // near plane 1, far plane 100
        var matrix = Matrix4x4.Perspective(60, 1, 1, 100);
        // will print:
        // 0.20000 0.00000  0.00000  0.00000
        // 0.00000 0.20000  0.00000  0.00000
        // 0.00000 0.00000 -0.02020 -1.02020
        // 0.00000 0.00000  0.00000  1.00000
        Debug.Log("projection matrix\n" + matrix);        // get shader-compatible projection matrix value
        var shaderMatrix = GL.GetGPUProjectionMatrix(matrix, false);
        // on a Direct3D-like graphics API, will print:
        // 0.20000 0.00000 0.00000 0.00000
        // 0.00000 0.20000 0.00000 0.00000
        // 0.00000 0.00000 0.01010 1.01010
        // 0.00000 0.00000 0.00000 1.00000
        Debug.Log("shader projection matrix\n" + shaderMatrix);
    }
}
```

Additional resources: Ortho, Camera.projectionMatrix, GL.LoadPixelMatrix, GL.LoadProjectionMatrix, GL.GetGPUProjectionMatrix.
