<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.PlayerConnection.BlockUntilRecvMsg.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| messageId | The type ID of the message that is sent to the Editor. |
| timeout | The time-out specified in milliseconds. |

### Returns

**bool** Returns true when the message is received and false if the call timed out.

### Description

Blocks the calling thread until either a message with the specified `messageId` is received or the specified time-out elapses.
