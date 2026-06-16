<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadingRateCombiner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constants that specify the shading rate combiner.

The various sources of shading rate are resolved using this model: C = A combiner B.

Additional resources: CommandBuffer.SetShadingRateCombiner, ShadingRateCombinerStage, ShadingRateInfo.supportsPerImageTile.

### Properties

| Property | Description |
| --- | --- |
| Keep | C = A |
| Override | C = B |
| Min | C = min(A, B) |
| Max | C = max(A, B) |
