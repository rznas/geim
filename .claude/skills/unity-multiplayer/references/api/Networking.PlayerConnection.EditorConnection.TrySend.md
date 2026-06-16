<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.EditorConnection.TrySend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| messageId | The type ID of the message to send to the connected Players. |
| playerId | The ID of the Player that you want to sent this message to. If you want to send it to all Players, set this to 0.. |

### Returns

**bool** Returns true when the Editor sends data successfully, and false when there is no space in the socket ring buffer or sending fails.

### Description

Attempts to send data from the Editor to the connected Players.
