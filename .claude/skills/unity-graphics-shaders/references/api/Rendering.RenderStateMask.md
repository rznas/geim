<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderStateMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies which parts of the render state that is overriden.

In order to override multiple parts of the render state, the desired values should be logically OR'd together.

Additional resources: RenderStateBlock.

### Properties

| Property | Description |
| --- | --- |
| Nothing | No render states are overridden. |
| Blend | When set, the blend state is overridden. |
| Raster | When set, the raster state is overridden. |
| Depth | When set, the depth state is overridden. |
| Stencil | When set, the stencil state and reference value is overridden. |
| Everything | When set, all render states are overridden. |
