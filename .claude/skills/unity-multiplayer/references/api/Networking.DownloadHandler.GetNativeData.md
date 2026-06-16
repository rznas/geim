<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.GetNativeData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<byte>** NativeArray providing access to downloaded data.

### Description

Provides allocation-free access to the downloaded data as a NativeArray.

The data is owned by the download handler and memory is released when the download handler is disposed. The returned NativeArray is read-only.
