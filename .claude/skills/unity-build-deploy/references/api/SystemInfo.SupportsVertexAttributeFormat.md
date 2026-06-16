<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.SupportsVertexAttributeFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The VertexAttributeFormat format to look up. |
| dimension | The dimension of vertex data to check for. |

### Returns

**bool** True if the format with the given dimension is supported.

### Description

Indicates whether the given combination of a vertex attribute format and dimension is supported on this device.

Not all VertexAttributeFormat and dimension combinations are supported. The most common restriction is that format and dimension data size must be a multiple of 4 bytes, so for example VertexAttributeFormat.UNorm8 with dimensions below 4 are not supported. Some platforms or devices might have more limitations, for example VertexAttributeFormat.Float16 is not supported by some mobile phones.

Additional resources: VertexAttributeFormat, VertexAttributeDescriptor.
