<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.GetText.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** String to return as the return value of the text property.

### Description

Callback, invoked when the text property is accessed.

The return value of this method will be returned as the value of the data property.

This method will be invoked on the main thread.

If not overridden, the default behavior of this callback is to call GetData. If GetData returns `null` or an empty string, then this method will return `null` or an empty string (respectively). Otherwise, this method will decode the byte array returned from GetData as a UTF8 string and return the decoded string.
