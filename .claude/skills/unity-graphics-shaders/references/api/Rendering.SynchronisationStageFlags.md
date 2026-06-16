<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SynchronisationStageFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the various stages of GPU processing against which the GraphicsFence can be set and waited against.

The enum values can be combined; for example, a GraphicsFence created with SynchronisationStageFlags.VertexProcessing | SynchronisationStageFlags.ComputeProcessing flags would complete once all previous draw calls have completed their vertex shaders and all previous compute shader dispatches have completed.

### Properties

| Property | Description |
| --- | --- |
| VertexProcessing | All aspects of vertex processing in the GPU. |
| PixelProcessing | All aspects of pixel processing in the GPU. |
| ComputeProcessing | All compute shader dispatch operations. |
| AllGPUOperations | All previous GPU operations (vertex, pixel and compute). |
