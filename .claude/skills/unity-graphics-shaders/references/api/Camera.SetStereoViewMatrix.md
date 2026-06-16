<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.SetStereoViewMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Specifies the stereoscopic view matrix to set. |
| matrix | The matrix to be set. |

### Description

Sets a custom view matrix for a specific stereoscopic eye.

In general, you should use the view matrices provided by the XRDisplaySubsystem for accurate stereoscopic rendering. However, when needed for specific scenarios, you can override the view matrices to achieve specific effects. For example, you would need to set custom projection and view matrices to implement binoculars in VR.

 When you set custom view matrices, the Camera analyzes them to determine whether it is safe to use a single cull pass or if it must separately cull each eye. Use Camera.areVRStereoViewMatricesWithinSingleCullTolerance to find out which will be used.

 Call Camera.ResetStereoViewMatrices to revert the camera back to using the view matrices provided by the XRDisplaySubsystem. Note that the Camera.stereoSeparation is not applied until you call Camera.ResetStereoViewMatrices.

 Additional resources: Camera.ResetStereoViewMatrices, Camera.stereoSeparation, Camera.areVRStereoViewMatricesWithinSingleCullTolerance.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
    }    // Update is called once per frame
    void Update()
    {
        Camera cam = GetComponent<Camera>();        Matrix4x4 viewL = cam.worldToCameraMatrix;
        Matrix4x4 viewR = cam.worldToCameraMatrix;        viewL[12] += 0.011f;
        viewR[12] -= 0.011f;
        cam.SetStereoViewMatrix(Camera.StereoscopicEye.Left, viewL);
        cam.SetStereoViewMatrix(Camera.StereoscopicEye.Right, viewR);
    }
}
```
