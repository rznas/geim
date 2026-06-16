<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SynchronisationStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The stages of the draw call processing on the GPU.

Use `SynchronisationStage` to wait for a draw call stage to complete, for example when you create a GraphicsFence.

### Properties

| Property | Description |
| --- | --- |
| VertexProcessing | The stage where the GPU processes vertices. |
| PixelProcessing | The stage where the GPU creates and shades fragments. |
