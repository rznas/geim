<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | Specify how this buffer can be used within the graphics pipeline. |
| usageFlags | Select what kind of update mode the buffer will have. |
| count | Number of elements in the buffer. |
| stride | Size of one element in the buffer. For index buffers, this must be either 2 or 4 bytes. |

### Description

Create a Graphics Buffer.

Use Release to release the buffer when no longer needed.

If the buffer size exceeds the value in SystemInfo.maxGraphicsBufferSize, the constructor raises an exception.

Additional resources: Graphics.RenderPrimitives.

### Parameters

| Parameter | Description |
| --- | --- |
| target | Specify how this buffer can be used within the graphics pipeline. |
| count | Number of elements in the buffer. |
| stride | Size of one element in the buffer. For index buffers, this must be either 2 or 4 bytes. |

### Description

Create a Graphics Buffer.

Use Release to release the buffer when no longer needed.

If the buffer size exceeds the value in SystemInfo.maxGraphicsBufferSize, the constructor raises an exception.

Additional resources: Graphics.RenderPrimitives.
