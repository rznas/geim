<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadHandle.GetBytesReadArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ulong*** An unsafe pointer to the array storing the number of bytes read for each ReadCommand in the request.

### Description

Returns an array containing the number of bytes read by the ReadCommand operations during the asynchronous file read request, where each index corresponds to the ReadCommand index.

It is not safe to retain the pointer after the ReadHandle has been disposed, as it will have been freed internally.

The number of entries in the array is equal to ReadHandle.ReadCount, so this can be used to find the maximum size of the array. This field (and the array itself) is resized at the start of the read.

A truncated read occurs when the ReadCommand describing the read operation specifies a ReadCommand.Size and ReadCommand.Offset that extends past the end of the target file.
