<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.Tick.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ticks the ChannelClient. When you call this method, it checks whether any incoming messages from the server need to be processed, and whether any outgoing messages need to be sent to the server.

Call this method from the main thread. Call it only if auto-tick is set to false. If a ChannelClient is set to ChannelClient.IsAutoTick, Unity ticks it automatically in EditorApplication.update.
