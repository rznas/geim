<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AttachmentIndexArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct encapsulating a fixed list of attachment indices used when declaring native render passes.

This fixed size struct allows for non-GC declaration of the required indices. Indices point into the attachment list as pass to CommandBuffer.BeginRenderPass

Additional resources: CommandBuffer.BeginRenderPass.

### Static Properties

| Property | Description |
| --- | --- |
| Emtpy | Utility to declare an empty index array. |
| MaxAttachments | Maximum number of indices this struct can hold. This is directly tied to the maximum number of attachments in a native render pass (8). |

### Properties

| Property | Description |
| --- | --- |
| Length | Number of elements in the AttachmentIndexArrayp. |

### Constructors

| Constructor | Description |
| --- | --- |
| AttachmentIndexArray | Create and initialize a new AttachmentIndexArray. |
