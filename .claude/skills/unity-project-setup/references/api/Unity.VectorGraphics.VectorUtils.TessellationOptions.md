<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.TessellationOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure to store the tessellation options.

### Properties

| Property | Description |
| --- | --- |
| MaxCordDeviation | The maximum distance on the cord to a straight line between to points after which more tessellation will be generated. To disable, specify float.MaxValue. |
| MaxTanAngleDeviation | The maximum angle (in degrees) between the curve tangent and the next point after which more tessellation will be generated. To disable, specify float.MaxValue. |
| SamplingStepSize | The number of samples used internally to evaluate the curves. More samples = higher quality. Should be between 0 and 1 (inclusive). |
| StepDistance | The uniform tessellation step distance. |
