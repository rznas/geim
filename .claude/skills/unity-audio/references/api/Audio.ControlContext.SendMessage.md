<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.SendMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Response** ProcessorInstance.Response.Handled if acknowledged and processed the message, ProcessorInstance.Response.Unhandled if not or ignored.

### Description

Send a message with a piece of data to be immediately evaluated by the ProcessorInstance.IControl_1.OnMessage.

The will be passed to the by reference, so the can modify it.
