<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventService.Emit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventType | The message's type name. |
| args | The arguments sent with the message. |
| targetId | When you send the event to a specific connection, this is the connection ID. By default it is set to -1, which sends the message to all other EventServices. |
| eventDataSerialization | Specifies how to serialize the request's arguments. This can be standard JSON, or JSON annotated with JsonUtility. You can use the latter to convert the argument to a concrete Unity object that supports JsonUtility.FromJson. |

### Description

Sends a fire-and-forget message to all ChannelClients connected to the "events" route.
