<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.ExecuteCommandBufferAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commandBuffer | The CommandBuffer to be executed. |
| queueType | Describes the desired async compute queue the supplied CommandBuffer should be executed on. |

### Description

Schedules the execution of a Command Buffer on an async compute queue. The ComputeQueueType that you pass in determines the queue order.

Note that all of the commands within the Command Buffer need to be of a type suitable for execution on the async compute queues. If the buffer contains any commands that are not appropriate then Unity logs an error and displays it in the Editor console window. The commands that a CommandBuffer can use on async compute queues are:

- CommandBuffer.BeginSample
- CommandBuffer.BuildRayTracingAccelerationStructure
- CommandBuffer.CopyCounterValue
- CommandBuffer.CopyTexture
- CommandBuffer.CreateGraphicsFence
- CommandBuffer.DisableShaderKeyword
- CommandBuffer.DispatchCompute
- CommandBuffer.EnableShaderKeyword
- CommandBuffer.EndSample
- CommandBuffer.GetTemporaryRT
- CommandBuffer.GetTemporaryRTArray
- CommandBuffer.IssuePluginEvent
- CommandBuffer.ReleaseTemporaryRT
- CommandBuffer.SetComputeBufferData
- CommandBuffer.SetComputeBufferParam
- CommandBuffer.SetComputeFloatParam
- CommandBuffer.SetComputeFloatParams
- CommandBuffer.SetComputeIntParam
- CommandBuffer.SetComputeIntParams
- CommandBuffer.SetComputeMatrixArrayParam
- CommandBuffer.SetComputeMatrixParam
- CommandBuffer.SetComputeTextureParam
- CommandBuffer.SetComputeVectorParam
- CommandBuffer.SetComputeVectorArrayParam
- CommandBuffer.SetGlobalBuffer
- CommandBuffer.SetGlobalColor
- CommandBuffer.SetGlobalFloat
- CommandBuffer.SetGlobalFloatArray
- CommandBuffer.SetGlobalInt
- CommandBuffer.SetGlobalMatrix
- CommandBuffer.SetGlobalMatrixArray
- CommandBuffer.SetGlobalTexture
- CommandBuffer.SetGlobalVector
- CommandBuffer.SetGlobalVectorArray
- CommandBuffer.WaitOnGraphicsFence

These commands are guaranteed to be executed on the same queue. If the target platform does not support async compute queues then Unity dispatches the work on the graphics queue.

 Additional resources: SystemInfo.supportsAsyncCompute, GPUFence, CommandBuffer.
