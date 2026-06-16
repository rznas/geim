<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.GetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**byte[]** Byte array to return as the value of the data property.

### Description

Callback, invoked when the data property is accessed.

The return value of this method will be returned as the value of the data property.

This method will be invoked on the main thread.

If not overridden, the default behavior of this callback is to return `null`.
