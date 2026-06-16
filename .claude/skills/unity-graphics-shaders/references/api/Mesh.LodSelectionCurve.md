<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.LodSelectionCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct represents the parameters that Unity uses to calculate which Mesh LOD level to select. It contains the lodBias and lodSlope properties, which scale logarithmically using screen space pixel area.

### Properties

| Property | Description |
| --- | --- |
| lodBias | Bias for level of detail selection calculation. |
| lodSlope | The slope parameter that Unity uses when calculating which Mesh LOD level to select. |

### Public Methods

| Method | Description |
| --- | --- |
| IsValid | Returns true if the lodSlope value is greater than 0.0001f. |
