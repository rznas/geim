<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.StencilState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Values for the stencil state.

Use this with RenderStateBlock and ScriptableRenderContext.DrawRenderers to override the GPU's render state.

Corresponds to the `Stencil` command in ShaderLab.

Additional resources: RenderStateBlock, [[ScriptableRenderContext.DrawRenderers], ShaderLab command: Stencil.

### Static Properties

| Property | Description |
| --- | --- |
| defaultValue | Default values for the stencil state. |

### Properties

| Property | Description |
| --- | --- |
| compareFunctionBack | The function used to compare the reference value to the current contents of the buffer for back-facing geometry. |
| compareFunctionFront | The function used to compare the reference value to the current contents of the buffer for front-facing geometry. |
| enabled | Controls whether the stencil buffer is enabled. |
| failOperationBack | What to do with the contents of the buffer if the stencil test fails for back-facing geometry. |
| failOperationFront | What to do with the contents of the buffer if the stencil test fails for front-facing geometry. |
| passOperationBack | What to do with the contents of the buffer if the stencil test (and the depth test) passes for back-facing geometry. |
| passOperationFront | What to do with the contents of the buffer if the stencil test (and the depth test) passes for front-facing geometry. |
| readMask | An 8 bit mask as an 0–255 integer, used when comparing the reference value with the contents of the buffer. |
| writeMask | An 8 bit mask as an 0–255 integer, used when writing to the buffer. |
| zFailOperationBack | What to do with the contents of the buffer if the stencil test passes, but the depth test fails for back-facing geometry. |
| zFailOperationFront | What to do with the contents of the buffer if the stencil test passes, but the depth test fails for front-facing geometry. |

### Constructors

| Constructor | Description |
| --- | --- |
| StencilState | Creates a new stencil state with the given values. |

### Public Methods

| Method | Description |
| --- | --- |
| SetCompareFunction | The function used to compare the reference value to the current contents of the buffer. |
| SetFailOperation | What to do with the contents of the buffer if the stencil test fails. |
| SetPassOperation | What to do with the contents of the buffer if the stencil test (and the depth test) passes. |
| SetZFailOperation | What to do with the contents of the buffer if the stencil test passes, but the depth test fails. |
