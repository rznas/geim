<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.LoadProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load an arbitrary matrix to the current projection matrix.

This function overrides current camera's projection parameters, so most often you want to save and restore projection matrix using GL.PushMatrix and GL.PopMatrix. The model and view matrix remain unchanged. Beware that the view matrix of the camera typically performs a scaling of -1 along the z axis, which might have to be taken into account depending on your use case.

The loaded projection matrix is expected to project into the API-agnostic clip volume defined by the following boundaries:
 **1.** x = -1..1 (left..right)
 **2.** y = -1..1 (bottom..top)
 **3.** z = -1..1 (near..far)

Unity might combine the matrix with an additional transformation to map to the convention of the actual graphics API. The resulting matrix can be obtained through GL.GetGPUProjectionMatrix.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Matrix4x4 projMtrx = Matrix4x4.identity;    void OnPostRender()
    {
        GL.PushMatrix();
        GL.LoadProjectionMatrix(projMtrx);
        // Do your drawing here...
        GL.PopMatrix();
    }
}
```

Additional resources: GL.LoadOrtho.
