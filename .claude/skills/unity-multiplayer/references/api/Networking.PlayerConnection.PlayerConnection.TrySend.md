<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.PlayerConnection.TrySend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| messageId | The type ID of the message that is sent to the Editor. |

### Returns

**bool** Returns true when the Player sends data successfully, and false when there is no space in the socket ring buffer or sending fails.

### Description

Attempt to sends data to the Editor.
