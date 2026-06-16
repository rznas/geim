<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.GetOrCreateClient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channelName | The name of the channel to open. This matches the last part of a WebSocket URL. For example, "127.0.0.1:9090/<channelName>". |

### Returns

**ChannelClient** Instance of the newly-created or existing ChannelClient.

### Description

Creates a new ChannelClient on a specific channel. If a client already exists, this method gets the client.

This method does not automatically start clients that it creates. For information about starting a client, see ChannelClient.Start.
