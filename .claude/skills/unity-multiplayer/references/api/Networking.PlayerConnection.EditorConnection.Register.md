<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.EditorConnection.Register.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| messageId | The message ID that invokes the callback when received by the Editor. |
| callback | Action that is executed when a message with ID `messageId` is received by the Editor. The callback includes the data that is sent from the Player, and the Player's ID. The Player ID is used to distinguish between multiple Players connected to the same Editor. |

### Description

Registers a callback on a certain message ID.

The message ID must be the same as that used in the PlayerConnection.Send().

There can be multiple registered callbacks for one message ID, and these can be deregistered individually with EditorConnection.Unregister.
