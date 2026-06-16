<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.FoveatedRenderingCaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Capabilities of the foveated rendering implementation.

### Properties

| Property | Description |
| --- | --- |
| None | Foveated rendering is not supported. |
| FoveationImage | The platform can use a foveation image to control the shading rate per tile in screen-space. |
| NonUniformRaster | The platform can use non-uniform rasterization to redistribute the resolution density. |
| ModeChangeOnlyBeforeRenderTargetSet | The platform requires that the mode change (enable/disable) to be done before changing render target. If this flag is not set the mode can be changed every drawcall. |
