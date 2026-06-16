<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.PlayerConnection.Register.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| messageId | The message ID that should cause the Action `callback` to be executed when received. |
| callback | Action that is executed when a message with ID `messageId` is received by the Editor. The callback includes the data that is sent from the Player, and the Player ID. The Player ID is always 1, because only one Editor can be connected. |

### Description

Registers a listener for a specific message ID, with an Action to be executed whenever that message is received by the Editor. This ID must be the same as for messages sent from EditorConnection.Send().
