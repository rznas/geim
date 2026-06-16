<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadbackRequest.GetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layer | The index of the layer to retrieve. |

### Description

Fetches the data of a successful request.

This method throws an InvalidOperationException if called when the request has not been fulfilled or has been disposed of. If the request is still pending then calling AsyncGPUReadbackRequest.done on this request will return false. In the case of a request not completing successfully, or if it has been disposed of then calling AsyncGPUReadbackRequest.hasError on this request will return true. Layer index allows you to access the different request slices of a Texture3D,TextureCube,Texture2DArray and TextureCubeArray.
