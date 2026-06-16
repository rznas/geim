<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the constant buffer to override. |
| value | The ComputeBuffer to override the constant buffer values with, or null to remove binding. |
| offset | Offset in bytes from the beginning of the buffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |
| nameID | The shader property ID of the constant buffer to override. |

### Description

Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for the material.

You can use this method to override all of the parameters in a shader constant buffer with the contents of a ComputeBuffer or GraphicsBuffer.

To use this method, the following must be true:

- The ComputeBuffer or GraphicsBuffer must have been created with a corresponding ComputeBufferType.Constant or GraphicsBuffer.Target.Constant flag.
- All the shader variants for this Material must use the same constant buffer layout for the given constant buffer.
- The data layout of the constant buffer must match exactly the data provided in the buffer.

The data layout of the constant buffer may be different depending on the graphics API. This means `SetConstantBuffer` might overwrite data or set variables to the wrong values. See Writing shaders for different graphics APIs for more information.

After this function has been called with a non-null ComputeBuffer or GraphicsBuffer, you can no longer manually set the value of a variable inside the overridden constant buffer. Calls to Material.SetFloat and similar where the given property name ID points to a variable inside the overridden constant buffer will have no effect.
