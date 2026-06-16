<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.ReceiveContentLengthHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contentLength | The value of the received `Content-Length` header. |

### Description

Callback, invoked with a `Content-Length` header is received.

This callback is invoked on the main thread.

This callback is only called if a `Content-Length` header is received. If the remote server doesn't transmit a `Content-Length` header, but includes body data, then it's possible for ReceiveData to be invoked without receiving a call to this method.

This callback might be invoked more than once. For example, if a redirect is encountered that has a `Content-Length` header, followed by a standard response, which also has a `Content-Length` header, this method is invoked twice.
