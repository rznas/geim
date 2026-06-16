<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetBufferData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buffer | The destination buffer. |
| data | Array of values to fill the buffer. |

### Description

Adds a command to set the buffer with values from an array.

The input data must follow the data layout rules of the graphics API in use. See Compute Shaders for cross-platform compatibility information.

Note: Because only [blittable](https://docs.microsoft.com/en-us/dotnet/framework/interop/blittable-and-non-blittable-types) data types can be copied from the array to the buffer, the array must only contain elements of a blittable type. If you attempt to use non-blittable types, an exception will be raised.

### Parameters

| Parameter | Description |
| --- | --- |
| buffer | The destination buffer. |
| data | Array of values to fill the buffer. |
| managedBufferStartIndex | The first element index in data to copy to the compute buffer. |
| graphicsBufferStartIndex | The first element index in compute buffer to receive the data. |
| count | The number of elements to copy. |
| nativeBufferStartIndex | The first element index in data to copy to the compute buffer. |

### Description

Adds a command to process a partial copy of data values from an array into the buffer.

The input data must follow the data layout rules of the graphics API in use. See Compute Shaders for cross-platform compatibility information.

Note: Because only [blittable](https://docs.microsoft.com/en-us/dotnet/framework/interop/blittable-and-non-blittable-types) data types can be copied from the array to the buffer, the array must only contain elements of a blittable type. If you attempt to use non-blittable types, an exception will be raised.
