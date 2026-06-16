<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-projectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The 4x4 matrix that's used to transform world space coordinates to clip space coordinates.

If you change this matrix, the camera no longer updates its rendering based on its fieldOfView. Moreover, this leaves the camera's nearClipPlane and farClipPlane unchanged, so you need to update those manually to avoid inconsistencies. This lasts until you call ResetProjectionMatrix.

Use a custom projection only if you really need a non-standard projection. This property is used by Unity's water rendering to setup an *oblique projection* matrix. Using custom projections requires good knowledge of transformation and projection matrices.

Note that projection matrix passed to shaders can be modified depending on platform and other state. If you need to calculate projection matrix for shader use from camera's projection, use GL.GetGPUProjectionMatrix.

Effects like temporal anti-aliasing (TAA) will apply a sub-pixel jitter to this matrix that varies across frames. To get a matrix without this jitter, use Camera.nonJitteredProjectionMatrix.

```csharp
// Add a temporal wobble to the camera projection matrix
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Matrix4x4 originalProjection;
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
        originalProjection = cam.projectionMatrix;
    }    void Update()
    {
        Matrix4x4 p = originalProjection;
        p.m01 += Mathf.Sin(Time.time * 1.2F) * 0.1F;
        p.m10 += Mathf.Sin(Time.time * 1.5F) * 0.1F;
        cam.projectionMatrix = p;
    }
}
```

```csharp
// Set an off-center projection, where perspective's vanishing
// point is not necessarily in the center of the screen.
//
// left/right/top/bottom define near plane size, i.e.
// how offset are corners of camera's near plane.
// Tweak the values and you can see camera's frustum change.using UnityEngine;
using System.Collections;[ExecuteInEditMode]
public class ExampleClass : MonoBehaviour
{
    public float left = -0.2F;
    public float right = 0.2F;
    public float top = 0.2F;
    public float bottom = -0.2F;
    void LateUpdate()
    {
        Camera cam = Camera.main;
        Matrix4x4 m = PerspectiveOffCenter(left, right, bottom, top, cam.nearClipPlane, cam.farClipPlane);
        cam.projectionMatrix = m;
    }    static Matrix4x4 PerspectiveOffCenter(float left, float right, float bottom, float top, float near, float far)
    {
        float x = 2.0F * near / (right - left);
        float y = 2.0F * near / (top - bottom);
        float a = (right + left) / (right - left);
        float b = (top + bottom) / (top - bottom);
        float c = -(far + near) / (far - near);
        float d = -(2.0F * far * near) / (far - near);
        float e = -1.0F;
        Matrix4x4 m = new Matrix4x4();
        m[0, 0] = x;
        m[0, 1] = 0;
        m[0, 2] = a;
        m[0, 3] = 0;
        m[1, 0] = 0;
        m[1, 1] = y;
        m[1, 2] = b;
        m[1, 3] = 0;
        m[2, 0] = 0;
        m[2, 1] = 0;
        m[2, 2] = c;
        m[2, 3] = d;
        m[3, 0] = 0;
        m[3, 1] = 0;
        m[3, 2] = e;
        m[3, 3] = 0;
        return m;
    }
}
```
