<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferMode.Immutable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Static buffer, only initial upload allowed by the CPU

The buffer is not modified by the CPU apart from optionally providing the initial contents of the buffer at buffer creation time. Unity typically stores these buffers in the GPU-only memory (where available). Compute shaders and other GPU operations are allowed to modify the contents of the buffer.
