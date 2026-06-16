<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelService.RegisterMessageHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channelName | The name of the channel. |
| handler | The handler that processes messages. |

### Returns

**Action** An action that you can use to unregister the handler from message processing (see ChannelService.UnregisterMessageHandler).

### Description

Registers a handler to process all incoming messages on a specific channel.
