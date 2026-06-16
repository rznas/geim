<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Signals that this DownloadHandler is no longer being used, and should clean up any resources it is using.

This method must be called once you have finished using a [DownloadHandler] object.

For convenience, UnityWebRequest exposes the UnityWebRequest.disposeDownloadHandlerOnDispose property, which will automatically call this method when UnityWebRequest.Dispose is called.

If you elect not to use UnityWebRequest.disposeDownloadHandlerOnDispose (by setting it to false), then you must call Dispose on the DownloadHandler yourself. This should only be in rare cases, such as when you wish to save the data in the DownloadHandler's internal buffer(s) for later processing.
