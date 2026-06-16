<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventService.CancelRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventType | The event to cancel. |
| message | The error message sent to the pending request. |

### Returns

**bool** Returns true if a pending request was found and cancelled false otherwise.

### Description

Checks whether there is a pending request for a specific event and, if there is, cancels it. See EventService.Request for more details on Request.
