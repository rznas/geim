<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandler.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Signals that this UploadHandler is no longer being used, and should clean up any resources it is using.

This method must be called once you have finished using an UploadHandler object.

For convenience, UnityWebRequest exposes the UnityWebRequest.disposeUploadHandlerOnDispose property, which will automatically call this method when UnityWebRequest.Dispose is called.

If you elect not to use UnityWebRequest.disposeUploadHandlerOnDispose (by setting it to false), then you must call Dispose on the [UploadHandler] yourself. This should only be in rare cases, such as when you wish to use the UploadHandler to transmit the same data multiple times.
