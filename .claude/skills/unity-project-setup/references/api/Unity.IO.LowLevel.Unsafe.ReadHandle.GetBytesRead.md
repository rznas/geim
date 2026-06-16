<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadHandle.GetBytesRead.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** The total number of bytes read by the asynchronous file read request.

### Description

Returns the total number of bytes read by all the ReadCommand operations the asynchronous file read request.

This may not be equal to the sum of all the requested ReadCommand.Size fields in the case of a ReadStatus.Failed error or a ReadStatus.Truncated status.

A truncated read occurs when the ReadCommand describing the read operation specifies a ReadCommand.Size and ReadCommand.Offset that extends past the end of the target file.

### Parameters

| Parameter | Description |
| --- | --- |
| readCommandIndex | The index of the ReadCommand for which to retrieve the number of bytes read. |

### Returns

**long** The number of bytes read for the specified ReadCommand.

### Description

Returns the total number of bytes read for a specific ReadCommand index.

This may not be equal the requested ReadCommand.Size fields in the case of a ReadStatus.Failed error or a ReadStatus.Truncated status.

A truncated read occurs when the ReadCommand describing the read operation specifies a ReadCommand.Size and ReadCommand.Offset that extends past the end of the target file.
