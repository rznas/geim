<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property name for the constant buffer in shader code. Use Shader.PropertyToID to get this ID. |
| name | The name of the buffer to bind as constant buffer. |
| buffer | The buffer to bind as constant buffer. |
| offset | The offset in bytes from the beginning of the ComputeBuffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |

### Description

Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for the ComputeShader.

You can use this method to override all of the parameters in a compute shader constant buffer with the contents of a ComputeBuffer or GraphicsBuffer.

To use this method, the following must be true:

- The ComputeBuffer or GraphicsBuffer must have been created with a corresponding ComputeBufferType.Constant or GraphicsBuffer.Target.Constant flag.
- All the shader variants for this Material must use the same constant buffer layout for the given constant buffer.
- The data layout of the constant buffer must match exactly the data provided in the buffer.

If the above conditions are not met, the buffer might not be bound correctly and so regular parameters will be picked up. Alternatively visual artifacts might occur.

The data layout of the constant buffer may be different depending on the graphics API. This means `SetConstantBuffer` might overwrite data or set variables to the wrong values. See Writing shaders for different graphics APIs for more information.

After this function has been called with a non-null ComputeBuffer or GraphicsBuffer, you can no longer manually set the value of a variable inside the overridden constant buffer. Calls to ComputeShader.SetFloat and similar where the given property name ID points to a variable inside the overridden constant buffer will have no effect.

Constant buffers are bound to all kernels in a ComputeShader.
