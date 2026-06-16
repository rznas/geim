<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBuffer.EndWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| countWritten | Number of elements written to the buffer. Counted from the first element. |

### Description

Ends a write operation to the buffer

This call ends a write operation on the buffer. When you call this method, Unity marks the native array returned by the corresponding ComputeBuffer.BeginWrite call as unusable, and then disposes of it.
