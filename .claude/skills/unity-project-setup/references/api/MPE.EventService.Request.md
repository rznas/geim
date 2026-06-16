<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventService.Request.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventType | The request's event type name. |
| promiseHandler | The handler called when the Request is either fulfilled or cancelled, or times out. |
| args | Arguments sent with the request event. |
| timeoutInMs | The timeout value in milliseconds. After this amount of time passes the Request is considered to be cancelled. |
| eventDataSerialization | Specifies how to serialize the request's arguments. This can be standard JSON, or JSON annotated with JsonUtility. You can use the latter to convert the argument to a concrete Unity object that supports JsonUtility.FromJson. |

### Description

Sends a request to all connected clients on the "events" channel.

Any client can attempt fulfill the request but only the first client that acknowledges the request can actually fulfill it.
