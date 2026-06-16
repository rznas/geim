<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-worldToCameraMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Matrix that transforms from world to camera space.

This matrix is often referred to as "view matrix" in graphics literature.

Use this to calculate the Camera space position of GameObjects or to provide a custom Camera's location that is not based on the transform.

Note that camera space matches OpenGL convention: camera's forward is the negative Z axis. This is different from Unity's convention, where forward is the positive Z axis.

If you change this matrix, the camera no longer updates its rendering based on its Transform. This lasts until you call ResetWorldToCameraMatrix.

```csharp
// Offsets camera's rendering from the transform's position.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector3 offset = new Vector3(0, 1, 0);
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void LateUpdate()
    {
        Vector3 camoffset = new Vector3(-offset.x, -offset.y, offset.z);
        Matrix4x4 m = Matrix4x4.TRS(camoffset, Quaternion.identity, new Vector3(1, 1, -1));
        cam.worldToCameraMatrix = m * transform.worldToLocalMatrix;
    }
}
```

Additional resources: Matrix4x4.LookAt, CommandBuffer.SetViewMatrix.
