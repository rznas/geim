<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Abort.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If in progress, halts the UnityWebRequest as soon as possible.

This method may be called at any time. If the UnityWebRequest has not already completed, the UnityWebRequest will halt uploading or downloading data as soon as possible. Aborted UnityWebRequests are considered to have encountered a system error. Depending upon the type of error, the result property will return one of the error values: ConnectionError, ProtocolError, or DataProcessingError. The error property will be `Request Aborted`.

If this method is called prior to calling Send, then the UnityWebRequest will abort immediately after the call to Send.

Calls to this method have no effect after this UnityWebRequest has encountered a different error, or has successfully finished communicating with the remote server.
