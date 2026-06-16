<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadingRateFragmentSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constants that specify the shading rate. Not all values are supported by all hardware. Avaibility should be queried first. See ShadingRateInfo.availableFragmentSizes for details.

Additional resources: CommandBuffer.SetShadingRateFragmentSize, ShadingRateInfo.supportsPerImageTile, ShadingRateInfo.QueryNativeValue.

### Properties

| Property | Description |
| --- | --- |
| FragmentSize1x1 | Specifies no change to the vertical and horizontal resolution. |
| FragmentSize1x2 | Specifies that the shading rate should reduce vertical resolution 2x. |
| FragmentSize2x1 | Specifies that the shading rate should reduce horizontal resolution 2x. |
| FragmentSize2x2 | Specifies that the shading rate should reduce the resolution of both axes 2x. |
| FragmentSize1x4 | Specifies that the shading rate should reduce vertical resolution 4x. |
| FragmentSize4x1 | Specifies that the shading rate should reduce horizontal resolution 4x. |
| FragmentSize2x4 | Specifies that the shading rate should reduce horizontal resolution 2x, and reduce vertical resolution 4x. |
| FragmentSize4x2 | Specifies that the shading rate should reduce horizontal resolution 4x, and reduce vertical resolution 2x. |
| FragmentSize4x4 | Specifies that the shading rate should reduce the resolution of both axes 4x. |
