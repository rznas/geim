<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the offset, size, and destination buffer of a single read operation.

If the asynchronous file read request results in a ReadStatus.Truncated or ReadStatus.Failed state the `Size` field will be updated with the actual number of bytes read.

### Properties

| Property | Description |
| --- | --- |
| Buffer | The buffer that receives the read data. |
| Offset | The offset where the read begins, within the file. |
| Size | The size of the read in bytes. |
