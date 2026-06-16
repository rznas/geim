<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ResetCacheServerReconnectTimer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets the internal cache server connection reconnect timer values. The default delay timer value is 1 second, and the max delay value is 5 minutes. Everytime a connection attempt fails it will double the delay timer value, until a maximum time of the max value.
