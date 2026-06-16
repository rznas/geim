<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IControl_1.OnMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context the processor is in. |
| pipe | Cross-thread communications pipe. |
| message | The message someone sent to you through ControlContext.SendMessage. The contents are sent by reference, so you can modify them and the sender will see the changes. |

### Returns

**Response** Response.Handled if this ProcessorInstance acknowledged and processed the message, Response.Unhandled if not or ignored.

### Description

Called immediately from ControlContext.SendMessage when a message was sent to this ProcessorInstance.
