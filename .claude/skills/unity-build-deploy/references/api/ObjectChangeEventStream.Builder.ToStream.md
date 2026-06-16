<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.Builder.ToStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator to use for the new stream. |

### Returns

**ObjectChangeEventStream** A new stream that contains all events recorded in this instance at the time of the function call.

### Description

Copies the data collected in this instance into a new ObjectChangeEventStream instance.

Calling this method does not affect the internal state of this instance. You can construct multiple independent streams from one builder.
