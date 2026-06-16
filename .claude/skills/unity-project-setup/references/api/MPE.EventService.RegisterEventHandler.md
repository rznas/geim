<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventService.RegisterEventHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventType | The event type name. |
| handler | The handler. |

### Returns

**Action** An action that, when invoked, unregisters the handler (see EventService.Off).

### Description

Registers a handler for a specific event type. The handler is called whenever a message of the specified type is sent. Messages are sent using EventService.Emit or EventService.Request.
