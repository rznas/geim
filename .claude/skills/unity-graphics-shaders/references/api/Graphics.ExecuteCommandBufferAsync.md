<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.ExecuteCommandBufferAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buffer | The CommandBuffer to be executed. |
| queueType | Describes the desired async compute queue the supplied CommandBuffer should be executed on. |

### Description

Executes a command buffer on an async compute queue with the queue selected based on the ComputeQueueType parameter passed.

It is required that all of the commands within the command buffer be of a type suitable for execution on the async compute queues. If the buffer contains any commands that are not appropriate then an error will be logged and displayed in the editor window. Specifically the following commands are permitted in a CommandBuffer intended for async execution:

CommandBuffer.BeginSample

CommandBuffer.BuildRayTracingAccelerationStructure

CommandBuffer.CopyCounterValue

CommandBuffer.CopyTexture

CommandBuffer.CreateGraphicsFence

CommandBuffer.DisableShaderKeyword

CommandBuffer.DispatchCompute

CommandBuffer.EnableShaderKeyword

CommandBuffer.EndSample

CommandBuffer.GetTemporaryRT

CommandBuffer.GetTemporaryRTArray

CommandBuffer.IssuePluginEvent

CommandBuffer.ReleaseTemporaryRT

CommandBuffer.SetComputeBufferData

CommandBuffer.SetComputeBufferParam

CommandBuffer.SetComputeFloatParam

CommandBuffer.SetComputeFloatParams

CommandBuffer.SetComputeIntParam

CommandBuffer.SetComputeIntParams

CommandBuffer.SetComputeMatrixArrayParam

CommandBuffer.SetComputeMatrixParam

CommandBuffer.SetComputeTextureParam

CommandBuffer.SetComputeVectorParam

CommandBuffer.SetComputeVectorArrayParam

CommandBuffer.SetGlobalBuffer

CommandBuffer.SetGlobalColor

CommandBuffer.SetGlobalFloat

CommandBuffer.SetGlobalFloatArray

CommandBuffer.SetGlobalInt

CommandBuffer.SetGlobalMatrix

CommandBuffer.SetGlobalMatrixArray

CommandBuffer.SetGlobalTexture

CommandBuffer.SetGlobalVector

CommandBuffer.SetGlobalVectorArray

CommandBuffer.WaitOnGraphicsFence

All of the commands within the buffer are guaranteed to be executed on the same queue. If the target platform does not support async compute queues then the work is dispatched on the graphics queue.

Additional resources: SystemInfo.supportsAsyncCompute , GPUFence, CommandBuffer.
