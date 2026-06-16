<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.RegisterMessageHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | A handler for all incoming messages on a specific channel. |

### Returns

**Action** An action that, when invoked, unregisters the ChannelClient handler (See ChannelClient.UnregisterMessageHandler).

### Description

Registers a new handler on a specific channel. The new handler is called whenever a message is sent to the ChannelClient.
