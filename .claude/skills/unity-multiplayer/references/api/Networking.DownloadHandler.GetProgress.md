<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.GetProgress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**float** The return value for UnityWebRequest.downloadProgress.

### Description

Callback, invoked when UnityWebRequest.downloadProgress is accessed.

This callback will be invoked when scripts access the UnityWebRequest.downloadProgress property on this DownloadHandler's parent UnityWebRequest. The return value of this method will be returned as the value of the UnityWebRequest.downloadProgress property.

This callback will be invoked on the main thread.

If not overridden, the default behavior of this callback is to return `0.5`.
