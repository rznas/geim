<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.Close.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channelName | The name of the channel to close. |

### Description

Closes the ChannelClient. This closes the WebSocket client but not the Channel in the ChannelService. Other ChannelClients can still connect on the same Channel.

For information about closing a channel permanently, see ChannelService.CloseChannel.
