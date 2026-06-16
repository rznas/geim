<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.BeginSubPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | Array of attachments to be used as the color render targets in this sub pass. These are specificed as indices into the array passed to BeginRenderPass. |
| inputs | Array of attachments to be used as input attachments in this sub pass. These are specificed as indices into the array passed to BeginRenderPass. |
| isDepthStencilReadOnly | If true, both depth and stencil attachments are read-only in this sub pass. Some renderers require this in order to be able to use the depth and stencil attachments as inputs. |
| isDepthReadOnly | If true, the depth attachment is read-only in this sub pass. Some renderers require this in order to be able to use the depth attachment as input. |
| isStencilReadOnly | If true, the stencil attachment is read-only in this sub pass. Some renderers require this in order to be able to use the stencil attachment as input. |

### Description

Schedules the beginning of a new sub pass within a render pass. Render passes can never be standalone, they must always contain at least one sub pass. Only one sub pass can be active at any time.

Additional resources: EndSubPass, BeginRenderPass, BeginScopedSubPass, BeginScopedRenderPass.
