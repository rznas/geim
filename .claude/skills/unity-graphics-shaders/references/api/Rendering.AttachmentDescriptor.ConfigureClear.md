<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AttachmentDescriptor.ConfigureClear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clearCol | Color clear value. Ignored on depth/stencil attachments. |
| clearDep | Depth clear value. Ignored on color surfaces. |
| clearStenc | Stencil clear value. Ignored on color or depth-only surfaces. |

### Description

When the RenderPass starts, clear this attachment into the color or depth/stencil values given (depending on the format of this attachment). Changes loadAction to RenderBufferLoadAction.Clear.
