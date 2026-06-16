<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.IndirectDrawArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the data layout for non-indexed indirect render calls.

To setup GraphicsBuffer for non-indexed indirect rendering, use this struct to define the data layout. The layout can change between platforms, so for improved portability, use this struct instead of defining the data as raw ints.

Additional resources: Graphics.RenderPrimitivesIndirect.

### Static Properties

| Property | Description |
| --- | --- |
| size | The size of the struct in bytes. |

### Properties

| Property | Description |
| --- | --- |
| instanceCount | The number of instances to render. |
| startInstance | The first instance to render. |
| startVertex | The first vertex to render. |
| vertexCountPerInstance | The number of vertices per instance. |
