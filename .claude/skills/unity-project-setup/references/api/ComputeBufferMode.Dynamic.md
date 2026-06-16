<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferMode.Dynamic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dynamic buffer.

Use this if the buffer is modified often by the CPU (by calls to ComputeBuffer.SetData or ComputeBuffer.BeginWrite). Unity typically stores buffers of this type into GPU-visible CPU memory, to enable fast CPU uploads at the cost of GPU performance when it accesses the buffer. If the contents of the buffer are modified while the GPU is reading from it, Unity makes the GPU see the buffer contents as they were at the time the GPU command was issued. This can create extra transient copies of the buffer, which are deleted once the GPU operation is complete.
