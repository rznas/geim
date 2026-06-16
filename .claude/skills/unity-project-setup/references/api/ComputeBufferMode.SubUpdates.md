<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferMode.SubUpdates.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dynamic, unsynchronized access to the buffer.

Same as ComputeBufferMode.Dynamic except Unity does not perform any CPU-GPU synchronization; if the user modifies an area of the buffer where the GPU is currently reading from, the results are undefined. For example, this mode together with GraphicsFence can be used to implement circular buffers.
