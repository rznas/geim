<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-uploadProgress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a floating-point value between 0.0 and 1.0, indicating the progress of uploading body data to the server.

If the UnityWebRequest is complete (either a success or a system error), this property will always return 1. If the UnityWebRequest is still communicating with the remote server, and uploadHandler is `null`, this property will return zero. If Send has not yet been called, this property will return -1.
