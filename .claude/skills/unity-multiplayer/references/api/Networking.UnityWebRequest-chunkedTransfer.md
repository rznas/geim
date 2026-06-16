<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-chunkedTransfer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

**Deprecated.**. HTTP/2 and many HTTP/1.1 servers don't support this; we recommend leaving it set to false (default).

This property indicates whether the UnityWebRequest should employ the HTTP/1.1 chunked-transfer encoding method, which allows the system to send partial data and be prompted by the server for more data with a 100/Continue HTTP response. This property cannot be changed after calling Send.

**Note:** On WebGL build targets, this setting is ignored. Instead, the web browser handles protocol negotiations.

**Note:** If this setting is set to true then HTTP/1.1 is forced. Refer to HttpForcedVersion for more information.

*Default value:* `false`.
