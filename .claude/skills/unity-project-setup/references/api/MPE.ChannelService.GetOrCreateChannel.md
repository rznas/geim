<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelService.GetOrCreateChannel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channelName | The name of the channel to retrieve. |
| handler | The channel handler to register. |

### Returns

**Action** This action can be invoked to unregister the handler from the channel (see ChannelService.UnregisterMessageHandler).

### Description

Gets or creates a new channel.

When you create a channel, the ChannelService listens to connections on it, and routes all messages sent to it. You have to register a handler to process the messages and send them back to other clients."

If a channel with the same name already exists, it appends the handler to its list of handlers. This allows you to log or listen to all messages sent to a specific channel.
