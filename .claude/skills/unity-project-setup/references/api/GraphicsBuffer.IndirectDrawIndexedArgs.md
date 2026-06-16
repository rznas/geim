<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.IndirectDrawIndexedArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the data layout for indexed indirect render calls.

To setup GraphicsBuffer for indexed indirect rendering, use this struct to define the data layout. The layout can change between platforms, so to improve portability, use this struct instead of defining the data as raw ints.

Additional resources: Graphics.RenderMeshIndirect, Graphics.RenderPrimitivesIndexedIndirect.

### Static Properties

| Property | Description |
| --- | --- |
| size | The size of the struct in bytes. |

### Properties

| Property | Description |
| --- | --- |
| baseVertexIndex | The index to add to values fetched from the index buffer. |
| indexCountPerInstance | The number of vertex indices per instance. |
| instanceCount | The number of instances to render. |
| startIndex | The first index to use in the index buffer of the rendering call. |
| startInstance | The first instance to render. |
