<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadStatus.Truncated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The asynchronous file request has completed but one or more of the read operations were truncated.

A truncated read occurs when the ReadCommand describing the read operation specifies a `Size` and `Offset` that extends past the end of the target file. After the read operation is complete, use ReadHandle.GetBytesRead to get the total number of bytes read for a request, or ReadHandle.GetBytesReadAtIndex to get the number of bytes read for a single ReadCommand. A truncated read does not typically indicate a problem; all data in the file is read and no extra bytes are copied to your read buffer.
