<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetViewProjectionMatrices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| view | View (world to camera space) matrix. |
| proj | Projection (camera to clip space) matrix. |

### Description

Add a command to set the view and projection matrices.

This function is equivalent to calling SetViewMatrix and SetProjectionMatrix. It is slightly more efficient when changing both matrices at once.

This function is compatible with the Built-in Render Pipeline. It is not compatible with the Universal Render Pipeline (URP), the High Definition Render Pipeline (HDRP), or custom Scriptable Render Pipelines.

Note: The camera space in Unity matches OpenGL convention, so the negative z-axis is the camera's forward. This is different from usual Unity convention, where the camera's forward is the positive z-axis. If you are manually creating the view matrix, for example with an inverse of Matrix4x4.LookAt, you need to scale it by -1 along the z-axis to get a proper view matrix.

```csharp
using UnityEngine;
using UnityEngine.Rendering;// Attach this script to a Camera and pick a mesh to render.
// When entering Play mode, this will render a green mesh at
// origin position, via a command buffer.
[RequireComponent(typeof(Camera))]
public class ExampleScript : MonoBehaviour
{
    public Mesh mesh;    void Start()
    {
        var material = new Material(Shader.Find("Hidden/Internal-Colored"));
        material.SetColor("_Color", Color.green);        var tr = transform;
        var camera = GetComponent<Camera>();        // Code below does the same as what camera.worldToCameraMatrix would do. Doing
        // it "manually" here to illustrate how a view matrix is constructed.
        //
        // Matrix that looks from camera's position, along the forward axis.
        var lookMatrix = Matrix4x4.LookAt(tr.position, tr.position + tr.forward, tr.up);
        // Matrix that mirrors along Z axis, to match the camera space convention.
        var scaleMatrix = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, new Vector3(1, 1, -1));
        // Final view matrix is inverse of the LookAt matrix, and then mirrored along Z.
        var viewMatrix = scaleMatrix * lookMatrix.inverse;        var buffer = new CommandBuffer();
        buffer.SetViewProjectionMatrices(viewMatrix, camera.projectionMatrix);
        buffer.DrawMesh(mesh, Matrix4x4.identity, material);        camera.AddCommandBuffer(CameraEvent.BeforeSkybox, buffer);
    }
}
```

Additional resources: SetViewMatrix, SetProjectionMatrix, Camera.projectionMatrix, Matrix4x4.LookAt, Matrix4x4.Perspective.
