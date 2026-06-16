<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManager.CloseCachedFileAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileName | The path to the file to close. |
| dependency | (Optional) A JobHandle to wait on before performing the close. |

### Returns

**JobHandle** A JobHandle that completes when the asynchronous close operation finishes.

### Description

Closes a file held open internally by the AsyncReadManager.

The AsyncReadManager has an internal cache of up to 10 open files, so use this method if you experience a sharing violation when trying to access one of these files that is held open.

Note: Do not use this method for files opened with OpenFileAsync, as these files do not go into the AsyncReadManager's file cache. Use FileHandle.Close instead.
