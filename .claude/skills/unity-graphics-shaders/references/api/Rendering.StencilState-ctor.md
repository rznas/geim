<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.StencilState-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| readMask | An 8 bit mask as an 0–255 integer, used when comparing the reference value with the contents of the buffer. |
| writeMask | An 8 bit mask as an 0–255 integer, used when writing to the buffer. |
| enabled | Controls whether the stencil buffer is enabled. |
| compareFunctionFront | The function used to compare the reference value to the current contents of the buffer for front-facing geometry. |
| passOperationFront | What to do with the contents of the buffer if the stencil test (and the depth test) passes for front-facing geometry. |
| failOperationFront | What to do with the contents of the buffer if the stencil test fails for front-facing geometry. |
| zFailOperationFront | What to do with the contents of the buffer if the stencil test passes, but the depth test fails for front-facing geometry. |
| compareFunctionBack | The function used to compare the reference value to the current contents of the buffer for back-facing geometry. |
| passOperationBack | What to do with the contents of the buffer if the stencil test (and the depth test) passes for back-facing geometry. |
| failOperationBack | What to do with the contents of the buffer if the stencil test fails for back-facing geometry. |
| zFailOperationBack | What to do with the contents of the buffer if the stencil test passes, but the depth test fails for back-facing geometry. |
| compareFunction | The function used to compare the reference value to the current contents of the buffer. |
| passOperation | What to do with the contents of the buffer if the stencil test (and the depth test) passes. |
| failOperation | What to do with the contents of the buffer if the stencil test fails. |
| zFailOperation | What to do with the contents of the buffer if the stencil test passes, but the depth test. |

### Description

Creates a new stencil state with the given values.
