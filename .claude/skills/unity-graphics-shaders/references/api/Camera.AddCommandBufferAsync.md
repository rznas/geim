<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.AddCommandBufferAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | The point during the graphics processing at which this command buffer should commence on the GPU. |
| buffer | The buffer to execute. |
| queueType | The desired async compute queue type to execute the buffer on. |

### Description

Adds a command buffer to the GPU's async compute queues and executes that command buffer when graphics processing reaches a given point.

Executes an async compute command buffer on the GPU when the graphics queues processing reaches a point described by the evt parameter.

Multiple command buffers can be set to execute at the same camera event (or even the same buffer can be added multiple times). To remove a command buffer from execution, use RemoveCommandBuffer.

The command buffer can only call the following commands for execution on the async compute queues, otherwise an error will be logged and displayed in the Editor window:

CommandBuffer.BeginSample

CommandBuffer.BuildRayTracingAccelerationStructure

CommandBuffer.CopyCounterValue

CommandBuffer.CopyTexture

CommandBuffer.CreateGPUFence

CommandBuffer.DispatchCompute

CommandBuffer.EndSample

CommandBuffer.IssuePluginEvent

CommandBuffer.SetComputeBufferParam

CommandBuffer.SetComputeFloatParam

CommandBuffer.SetComputeFloatParams

CommandBuffer.SetComputeTextureParam

CommandBuffer.SetComputeVectorParam

CommandBuffer.WaitOnGPUFence

All of the commands within the buffer are guaranteed to be executed on the same queue. If the target platform does not support async compute queues then the work is dispatched on the graphics queue. This API is only available with the Built-in renderer.

Additional resources:GPUFence, SystemInfo.supportsAsyncCompute, CommandBuffer, RemoveCommandBuffer, GetCommandBuffers.
