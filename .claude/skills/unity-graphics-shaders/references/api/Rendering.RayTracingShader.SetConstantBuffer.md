<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property name for the constant buffer in shader code. Use Shader.PropertyToID to get this ID. |
| name | The name of the constant buffer in shader code. |
| buffer | The buffer to bind as constant buffer. |
| offset | The offset in bytes from the beginning of the ComputeBuffer or GraphicsBuffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |

### Description

Binds a constant buffer created through a ComputeBuffer or a GraphicsBuffer.

Use this method to override all of the shader parameters in the given constant buffer with the contents of the given ComputeBuffer or GraphicsBuffer.

When using a ComputeBuffer as parameter, it must have been created with a ComputeBufferType.Constant flag. Similarly, when a GraphicsBuffer is used as parameter, it must have been created with a GraphicsBuffer.Target.Constant flag. The data layout of the constant buffer must match exactly with the data provided in the ComputeBuffer or GraphicsBuffer.

If the obove conditions are not met, the buffer might not be bound correctly and so regular parameters will be picked up. Alternatively visual artifacts might occur.

After this function has been called with a non-null ComputeBuffer or GraphicsBuffer, you can no longer manually set the value of a variable inside the overridden constant buffer. Calls to RayTracingShader.SetFloat and similar where the given property name ID points to a variable inside the overridden constant buffer will have no effect.

Only shaders defined in the .raytrace file can access the constant buffer you designate as the argument for this method. To make this buffer accessible to all ray tracing shader types (closest hit, any hit, miss, etc.), call the Shader.SetGlobalConstantBuffer method instead.
