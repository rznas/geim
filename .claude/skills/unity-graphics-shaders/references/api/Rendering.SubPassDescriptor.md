<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubPassDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure discribing a single native subpass.

### Properties

| Property | Description |
| --- | --- |
| colorOutputs | Array of attachment indices to be used as the color render targets in this sub pass. These are specificed as indices into the attachment array passed to CommandBuffer.BeginRenderPass. |
| flags | Flags controlling specific reading behaviour of depth and stencil attachments. |
| inputs | Array of attachment indices to be used as input attachments in this sub pass. These are specificed as indices into the attachment array passed to CommandBuffer.BeginRenderPass. |
