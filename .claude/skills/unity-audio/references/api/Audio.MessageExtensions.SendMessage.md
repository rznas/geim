<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.MessageExtensions.SendMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Response** ProcessorInstance.Response.Handled if this ProcessorInstance acknowledged and processed the message, ProcessorInstance.Response.Unhandled if not or ignored.

### Description

Send a message with a piece of data to be immediately evaluated by the ProcessorInstance.IControl_1.OnMessage

This is an overload specifically for sending class types to processors. 

Additional resources: ControlContext.SendMessage
