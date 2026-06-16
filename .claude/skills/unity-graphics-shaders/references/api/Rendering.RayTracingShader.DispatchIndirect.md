<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.DispatchIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayGenFunctionName | The name of the ray generation shader. |
| argsBuffer | Buffer containing dispatch dimensions. |
| argsOffset | The byte offset into the buffer where the dispatch dimensions start. |
| camera | If you pass this parameter, Unity sets up built-in shader variables related to that camera. |

### Description

Dispatches this RayTracingShader.

This method is similar to Dispatch but the GPU retrieves the dispatch dimensions from `argsBuffer`. The typical use case is generating arbitrary amount of data using a ComputeShader and then dispatching that data, without requiring a readback to the CPU to retrieve the data size.

The buffer with arguments, `argsBuffer`, must contain three integer numbers at given `argsOffset` values representing the dispatch dimensions: width, height and depth. 

Additional resources: SystemInfo.supportsIndirectDispatchRays, GraphicsBuffer.CopyCount.
