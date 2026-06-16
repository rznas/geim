<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RasterState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Values for the raster state.

Use this with RenderStateBlock and ScriptableRenderContext.DrawRenderers to override the GPU's render state.

Corresponds to the `Conservative`, `Cull`, `ZClip`, and `Offset` commands in ShaderLab.

Additional resources: RenderStateBlock, [[ScriptableRenderContext.DrawRenderers], ShaderLab command: Stencil.

### Static Properties

| Property | Description |
| --- | --- |
| defaultValue | Default values for the raster state. |

### Properties

| Property | Description |
| --- | --- |
| conservative | Enables conservative rasterization. Before using check for support via SystemInfo.supportsConservativeRaster property. |
| cullingMode | Controls which sides of polygons should be culled (not drawn). |
| depthClip | Enable clipping based on depth. |
| offsetFactor | Scales the maximum Z slope in the GPU's depth bias setting. |
| offsetUnits | Scales the minimum resolvable depth buffer value in the GPU's depth bias setting. |

### Constructors

| Constructor | Description |
| --- | --- |
| RasterState | Creates a new raster state with the given values. |
