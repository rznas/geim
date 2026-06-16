<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows the asynchronous read back of GPU resources.

This class is used to copy resource data from the GPU to the CPU without any stall (GPU or CPU), but adds a few frames of latency. Additional resources: AsyncGPUReadbackRequest.

Additional resources: SystemInfo.supportsAsyncGPUReadback, SystemInfo.supportsAsyncGPUReadback.

### Static Methods

| Method | Description |
| --- | --- |
| Request | Retrieves data asynchronously from a GPU resource. |
| RequestAsync | Retrieves data asynchronously from a GPU resource. |
| RequestIntoNativeArray | Retrieves data asynchronously from a GPU Texture resource. |
| RequestIntoNativeArrayAsync | Retrieves data asynchronously from a GPU Texture resource. |
| RequestIntoNativeSlice | Retrieves data asynchronously from a GPU Texture resource. |
| RequestIntoNativeSliceAsync | Retrieves data asynchronously from a GPU Texture resource. |
| WaitAllRequests | Waits until the completion of every request. |
