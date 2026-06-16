<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.Send.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Data to send. |
| connectionId | The connection ID of the client sending the data. |

### Description

Sends an ASCII or binary message to the ChannelService. Depending on how the channel's handler processes the message, it may also be sent to other connections.
