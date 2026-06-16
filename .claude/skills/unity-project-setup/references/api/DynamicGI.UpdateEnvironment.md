<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI.UpdateEnvironment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Schedules an update of the environment cubemap.

When you use this signature, Unity schedules an update of the environment cubemap.
 Query SystemInfo.supportsAsyncGPUReadback to determine if the system currently running Unity supports asynchronous readbacks. If the system supports these readbacks, Unity reads back the environment cubemap while waiting for the lighting result, but may lag one or more frames behind. You can schedule a limited number of environment readbacks. If you schedule updates in incremements more frequent than Unity can perform the readback, Unity silently ignores the request.
If the current system does not support asynchronous readbacks, environment cubemap readback stalls the current thread, and Unity reads and processes each face of the cubemap one by one. An alternative to environment cubemap updates is to set the cubemap updates manually with DynamicGI.SetEnvironmentData.
