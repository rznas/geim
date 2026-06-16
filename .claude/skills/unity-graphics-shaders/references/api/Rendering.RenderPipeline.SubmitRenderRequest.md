<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.SubmitRenderRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera to render the request. |
| data | All the necessary destination information to render a request, for example render destination, mipmap level, slice index, and so on. This information varies based on the `RequestData` type. |

### Description

Submits a render request to a camera using the render pipeline, outside of the Unity render loop.

Call this method or Camera.SubmitRenderRequest to render the selected camera with the render pipeline to the render destination specified in the `RequestData` parameter. Before submitting the request, use RenderPipeline.SupportsRenderRequest to verify that the render pipeline supports the `RequestData` type you have selected. The request is processed sequentially within your script, and no callback mechanism is involved.

The Universal Render Pipeline (URP) supports the following `RequestData` types:

- StandardRequest renders a complete camera stack and outputs the result to the specified target. This request is only applicable to Base Cameras.
- ObjectIdRequest renders the object ID in each pixel and outputs the result to the specified target. This request is only supported in the Editor.
- UniversalRenderPipeline.SingleCameraRequest renders a single camera and outputs the result to the specified target. This request is only applicable to Base Cameras.

The High Definition Render Pipeline (HDRP) supports the following `RequestData` types:

- StandardRequest renders a camera without Arbitrary Output Variables (AOVs) and outputs the result to the specified target. It uses a separate camera history from the render loop, to ensure temporal effects are consistent.
- ObjectIdRequest renders the object ID to each corresponding pixel and outputs the result to the given target. Only supported in the editor.

The Built-In Render Pipeline supports only the ObjectIdRequest request type.

For more information about how to render a render request in URP, refer to Create a Render Request in URP.

```csharp
// This example sends render requests when the GUI button "Render Request" is selected.
// To use it, attach the script to a camera and select Enter Play Mode.using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;[RequireComponent(typeof(Camera))]
public class StandardRenderRequest : MonoBehaviour
{
    [SerializeField]
    RenderTexture texture2D, texture2DArray, cubeMap, texture3D;    // Create a button you can use to send a render request
    private void OnGUI()
    {
        GUILayout.BeginVertical();
        if (GUILayout.Button("Render Request"))
        {
            SendRenderRequests();
        }
        GUILayout.EndVertical();
    }    // Send render requests outside of Unity render loop
    void SendRenderRequests()
    {
        Camera camera = GetComponent<Camera>();        // Create a standard request. This is supported only in HDRP and URP.
        RenderPipeline.StandardRequest request = new RenderPipeline.StandardRequest();        // Check if the request is supported by the render pipeline
        if (RenderPipeline.SupportsRenderRequest(camera, request))
        {
            // Submit the render request to the render pipeline with different destination textures            // Render to a 2D texture
            request.destination = texture2D;            // Render the camera, and fill the 2D texture with its view
            RenderPipeline.SubmitRenderRequest(camera, request);            // Render to a 2D texture array
            request.destination = texture2DArray;
            for (int i = 0; i < texture2DArray.volumeDepth; i++)
            {
                request.slice = i;
                // Render the camera and fill slice i of the 2D texture array with its view
                RenderPipeline.SubmitRenderRequest(camera, request);
            }            // Render to a cubemap texture
            var faces = new[] {
                CubemapFace.NegativeX, CubemapFace.PositiveX,
                CubemapFace.NegativeY, CubemapFace.PositiveY,
                CubemapFace.NegativeZ, CubemapFace.PositiveZ
            };
            request.destination = cubeMap;
            foreach (var face in faces)
            {
                request.face = face;
                // Render the camera and fill each face of the cubemap texture with its view
                RenderPipeline.SubmitRenderRequest(camera, request);
            }            // Render to a 3D texture
            request.destination = texture3D;
            for (int i = 0; i < texture3D.volumeDepth; i++)
            {
                request.slice = i;
                // Render the camera and fill slice i of the 3D texture with its view
                RenderPipeline.SubmitRenderRequest(camera, request);
            }
        }
    }
}
```
