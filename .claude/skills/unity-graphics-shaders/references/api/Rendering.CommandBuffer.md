<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

List of graphics commands to execute.

Command buffers hold list of rendering commands ("set render target, draw mesh, ..."). They can be set to execute at various points during camera rendering (see Camera.AddCommandBuffer), light rendering (see Light.AddCommandBuffer) or be executed immediately (see Graphics.ExecuteCommandBuffer).

Typically they would be used to extend Unity's render pipelines in a custom way. For example, you could render some additional objects into deferred rendering G-buffer after all regular objects are done, or do custom processing of light shadow maps. See command buffers overview page for more details.

Command buffers can be created and then executed many times if needed.

Additional resources: Camera.AddCommandBuffer, Light.AddCommandBuffer, CameraEvent, LightEvent, Graphics.ExecuteCommandBuffer, command buffers overview.

### Static Properties

| Property | Description |
| --- | --- |
| ThrowOnSetRenderTarget | Throw an exception when SetRenderTarget is recorded on a command buffer. This is mainly usefull when using native renderpasses to avoid inadvertently recording SetRenderTarget commands on the command buffer. |

### Properties

| Property | Description |
| --- | --- |
| name | Name of this command buffer. |
| sizeInBytes | Size of this command buffer in bytes (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| CommandBuffer | Create a new empty command buffer. |

### Public Methods

| Method | Description |
| --- | --- |
| BeginRenderPass | Begin a new native render pass. |
| BeginSample | Adds a command to begin profile sampling. |
| Blit | Adds a command to use a shader to copy the pixel data from a texture into a render texture. |
| BuildRayTracingAccelerationStructure | Adds a command to build the RayTracingAccelerationStructure to be used in a ray tracing dispatch or when using inline ray tracing (ray queries). |
| Clear | Clear all commands in the buffer. |
| ClearRandomWriteTargets | Unset random write targets for Shader Model 4.5 level pixel shaders. |
| ClearRenderTarget | Adds a "clear render target" command. |
| ConfigureFoveatedRendering | Adds a command to configure foveated rendering. |
| ConvertTexture | Adds a command to copy the pixel data from one texture, convert the data into a different format, and copy it into another texture. |
| CopyBuffer | Adds a command to copy the contents of one GraphicsBuffer into another. |
| CopyCounterValue | Adds a command to copy ComputeBuffer or GraphicsBuffer counter value. |
| CopyTexture | Adds a command to copy pixel data from one texture to another. |
| CreateAsyncGraphicsFence | Shortcut for calling CommandBuffer.CreateGraphicsFence with GraphicsFenceType.AsyncQueueSynchronisation as the first parameter. |
| CreateGraphicsFence | Creates a GraphicsFence. |
| DisableKeyword | Adds a command to disable a global or local shader keyword. |
| DisableScissorRect | Add a command to disable the hardware scissor rectangle. |
| DisableShaderKeyword | Adds a command to disable a global shader keyword with a given name. |
| DispatchCompute | Add a command to execute a ComputeShader. |
| DispatchRays | Adds a command to execute a RayTracingShader. |
| DrawMesh | Add a "draw mesh" command. |
| DrawMeshInstanced | Adds a "draw mesh with instancing" command.The mesh will be just drawn once, it won't be per-pixel lit and will not cast or receive realtime shadows.The command will not immediately fail and throw an exception if Material.enableInstancing is false, but it will log an error and skips rendering each time the command is being executed if such a condition is detected.InvalidOperationException will be thrown if the current platform doesn't support this API (i.e. if GPU instancing is not available). See SystemInfo.supportsInstancing. |
| DrawMeshInstancedIndirect | Add a "draw mesh with indirect instancing" command. |
| DrawMeshInstancedProcedural | Add a "draw mesh with instancing" command.Draw a mesh using Procedural Instancing. This is similar to Graphics.DrawMeshInstancedIndirect, except that when the instance count is known from script, it can be supplied directly using this method, rather than via a ComputeBuffer. If Material.enableInstancing is false, the command logs an error and skips rendering each time the command is executed; the command does not immediately fail and throw an exception.InvalidOperationException will be thrown if the current platform doesn't support this API (for example, if GPU instancing is not available). See SystemInfo.supportsInstancing. |
| DrawOcclusionMesh | Adds a command onto the commandbuffer to draw the VR Device's occlusion mesh to the current render target. |
| DrawProcedural | Add a "draw procedural geometry" command. |
| DrawProceduralIndirect | Add a "draw procedural geometry" command. |
| DrawRenderer | Add a "draw renderer" command. |
| DrawRendererList | Adds a "draw renderer list" command. |
| EnableKeyword | Adds a command to enable a global or local shader keyword. |
| EnableScissorRect | Add a command to enable the hardware scissor rectangle. |
| EnableShaderKeyword | Adds a command to enable a global keyword with a given name. |
| EndRenderPass | Terminate the active native renderpass. |
| EndSample | Adds a command to end profile sampling. |
| GenerateMips | Generate mipmap levels of a render texture. |
| GetTemporaryRT | Add a "get a temporary render texture" command. |
| GetTemporaryRTArray | Add a "get a temporary render texture array" command. |
| IncrementUpdateCount | Increments the updateCount property of a Texture. |
| InvokeOnRenderObjectCallbacks | Schedules an invocation of the OnRenderObject callback for MonoBehaviour scripts. |
| IssuePluginCustomBlit | Send a user-defined blit event to a native code plugin. |
| IssuePluginCustomTextureUpdateV2 | Send a texture update event to a native code plugin. |
| IssuePluginEvent | Send a user-defined event to a native code plugin. |
| IssuePluginEventAndData | Send a user-defined event to a native code plugin with custom data. |
| IssuePluginEventAndDataWithFlags | Send a user-defined event to a native code plugin with custom data and callback flags. |
| MarkLateLatchMatrixShaderPropertyID | Mark a global shader property id to be late latched. Possible shader properties include view, inverseView, viewProjection, and inverseViewProjection matrices. The Universal Render Pipeline (URP) uses this function to support late latching of shader properties. If you call this function when using built-in Unity rendering or the High-Definition Rendering Pipeline (HDRP), the results are ignored. |
| NextSubPass | Start the next native subpass as discribed by CommandBuffer.BeginRenderPass. |
| ReleaseTemporaryRT | Add a "release a temporary render texture" command. |
| RequestAsyncReadback | Adds an asynchonous GPU readback request command to the command buffer. |
| RequestAsyncReadbackIntoNativeArray | Adds an asynchonous GPU readback request command to the command buffer. |
| RequestAsyncReadbackIntoNativeSlice | Adds an asynchonous GPU readback request command to the command buffer. |
| ResetShadingRate | Add a "reset all shading rate states and images to their defaults" command. |
| ResolveAntiAliasedSurface | Force an antialiased render texture to be resolved. |
| SetBufferCounterValue | Adds a command to set the counter value of append/consume buffer. |
| SetBufferData | Adds a command to set the buffer with values from an array. |
| SetComputeBufferParam | Adds a command to set an input or output buffer parameter on a ComputeShader. |
| SetComputeConstantBufferParam | Adds a command to set a constant buffer on a ComputeShader. |
| SetComputeFloatParam | Adds a command to set a float parameter on a ComputeShader. |
| SetComputeFloatParams | Adds a command to set multiple consecutive float parameters on a ComputeShader. |
| SetComputeIntParam | Adds a command to set an integer parameter on a ComputeShader. |
| SetComputeIntParams | Adds a command to set multiple consecutive integer parameters on a ComputeShader. |
| SetComputeMatrixArrayParam | Adds a command to set a matrix array parameter on a ComputeShader. |
| SetComputeMatrixParam | Adds a command to set a matrix parameter on a ComputeShader. |
| SetComputeParamsFromMaterial | Sets the parameters for a compute shader kernel from a Material. |
| SetComputeTextureParam | Adds a command to set a texture parameter on a ComputeShader. |
| SetComputeVectorArrayParam | Adds a command to set a vector array parameter on a ComputeShader. |
| SetComputeVectorParam | Adds a command to set a vector parameter on a ComputeShader. |
| SetExecutionFlags | Set flags describing the intention for how the command buffer will be executed. |
| SetFoveatedRenderingMode | Adds a command to set the mode to use for foveated rendering. |
| SetGlobalBuffer | Add a "set global shader buffer property" command. |
| SetGlobalColor | Add a "set global shader color property" command. |
| SetGlobalConstantBuffer | Add a command to bind a global constant buffer. |
| SetGlobalDepthBias | Adds a command to set the global depth bias. |
| SetGlobalFloat | Add a "set global shader float property" command. |
| SetGlobalFloatArray | Add a "set global shader float array property" command. |
| SetGlobalInt | Adds a command to set the value of a given property for all Shaders, where the property has a type of Int in ShaderLab code. |
| SetGlobalInteger | Adds a command to set the value of a given property for all Shaders, where the property is an integer. |
| SetGlobalMatrix | Add a "set global shader matrix property" command. |
| SetGlobalMatrixArray | Add a "set global shader matrix array property" command. |
| SetGlobalRayTracingAccelerationStructure | Adds a command to bind the RayTracingAccelerationStructure object to all shader stages. |
| SetGlobalTexture | Add a "set global shader texture property" command, referencing a RenderTexture. |
| SetGlobalVector | Add a "set global shader vector property" command. |
| SetGlobalVectorArray | Add a "set global shader vector array property" command. |
| SetInstanceMultiplier | Adds a command to multiply the instance count of every draw call by a specific multiplier. |
| SetInvertCulling | Add a "set invert culling" command to the buffer. |
| SetKeyword | Adds a command to set the state of a global or local shader keyword. |
| SetLateLatchProjectionMatrices | Set the current stereo projection matrices for late latching. Stereo matrices is passed in as an array of two matrices. |
| SetProjectionMatrix | Add a command to set the projection matrix. |
| SetRandomWriteTarget | Set random write target for Shader Model 4.5 level pixel shaders. |
| SetRayTracingAccelerationStructure | Adds a command to set the RayTracingAccelerationStructure to be used in a RayTracingShader or a ComputeShader. |
| SetRayTracingBufferParam | Adds a command to set an input or output buffer parameter on a RayTracingShader. |
| SetRayTracingConstantBufferParam | Adds a command to set a constant buffer on a RayTracingShader. |
| SetRayTracingFloatParam | Adds a command to set a float parameter on a RayTracingShader. |
| SetRayTracingFloatParams | Adds a command to set multiple consecutive float parameters on a RayTracingShader. |
| SetRayTracingIntParam | Adds a command to set an integer parameter on a RayTracingShader. |
| SetRayTracingIntParams | Adds a command to set multiple consecutive integer parameters on a RayTracingShader. |
| SetRayTracingMatrixArrayParam | Adds a command to set a matrix array parameter on a RayTracingShader. |
| SetRayTracingMatrixParam | Adds a command to set a matrix parameter on a RayTracingShader. |
| SetRayTracingShaderPass | Adds a command to select which Shader Pass to use when executing ray/geometry intersection shaders. |
| SetRayTracingTextureParam | Adds a command to set a texture parameter on a RayTracingShader. |
| SetRayTracingVectorArrayParam | Adds a command to set a vector array parameter on a RayTracingShader. |
| SetRayTracingVectorParam | Adds a command to set a vector parameter on a RayTracingShader. |
| SetRenderTarget | Add a "set active render target" command. |
| SetShadingRateCombiner | Sets the shading rate combiner for a specific stage. |
| SetShadingRateFragmentSize | Add a "set base shading rate" command. |
| SetShadingRateImage | Add a "set shading rate image" command. |
| SetShadowSamplingMode | Add a "set shadow sampling mode" command. |
| SetSinglePassStereo | Add a command to set single-pass stereo mode for the camera. |
| SetupCameraProperties | Schedules the setup of Camera specific global Shader variables. |
| SetViewMatrix | Add a command to set the view matrix. |
| SetViewport | Add a command to set the rendering viewport. |
| SetViewProjectionMatrices | Add a command to set the view and projection matrices. |
| SetWireframe | Add a "set wireframe" command to the buffer. |
| UnmarkLateLatchMatrix | Unmark a global shader property for late latching. After unmarking, the shader property will no longer be late latched. This function is intended for the Universal Render Pipeline (URP) to specify late latched shader properties. |
| WaitAllAsyncReadbackRequests | Adds an "AsyncGPUReadback.WaitAllRequests" command to the CommandBuffer. |
| WaitOnAsyncGraphicsFence | Instructs the GPU to pause processing of the queue until it passes through the GraphicsFence fence. |
