<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadbackRequest.WaitForCompletion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Waits for completion of the request.

Calling AsyncGPUReadbackRequest.done on the request after this call, will always result in true whether the request has completed successfully or not. AsyncGPUReadbackRequest.hasError can be used to find out whether this request has been successful. Since WaitForCompletion stalls both GPU and CPU, calling this function will result in a large performance hit and should be used sparingly.
