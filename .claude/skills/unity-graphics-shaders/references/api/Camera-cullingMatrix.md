<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-cullingMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a custom matrix for the camera to use for all culling queries.

This lasts until it is disabled by calling ResetCullingMatrix.

A custom culling matrix can be useful in situations where multiple cameras must be culled identically in order to render effects such as reflections.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Camera cullingCamera;    void Awake()
    {
        cullingCamera = gameObject.AddComponent<Camera>();
        SetMainCameraCustomCullingMatrix(new Vector3(10.0f, 10.0f, 10.0f), Vector3.zero);
    }    void SetMainCameraCustomCullingMatrix(Vector3 cameraPosition, Vector3 lookAtPosition)
    {
        transform.position = cameraPosition;
        transform.LookAt(lookAtPosition);
        Camera.main.cullingMatrix = cullingCamera.projectionMatrix * cullingCamera.worldToCameraMatrix;
    }    void ResetMainCameraCullingMatrix()
    {
        Camera.main.ResetCullingMatrix();
    }
}
```
