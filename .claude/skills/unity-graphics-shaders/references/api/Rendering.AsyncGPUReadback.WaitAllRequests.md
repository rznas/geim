<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.WaitAllRequests.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Waits until the completion of every request.

If you call AsyncGPUReadbackRequest.done on any request after this call, it always returns `true` whether the request completed successfully or not. You can use AsyncGPUReadbackRequest.hasError to find out whether a request has been successful or not. WaitAllRequests stalls both the GPU and the CPU. This means that calling this function results in a large performance decrease. Therefore, you should use this function sparingly.
