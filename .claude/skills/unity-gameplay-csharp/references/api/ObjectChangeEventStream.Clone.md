<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.Clone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator to use to allocate the memory for the copy. |

### Returns

**ObjectChangeEventStream** A copy of the stream that contains the same events, but in a separate memory lcoation.

### Description

Creates a copy of this stream with the specified allocator.

Depending on the allocator used, the resulting copy needs to be manually disposed by the caller.
