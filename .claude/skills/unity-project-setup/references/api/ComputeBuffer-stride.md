<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBuffer-stride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Size of one element in the buffer in bytes (Read Only).

Must be a multiple of 4 and less than 2048, and match the size of the buffer type in the shader. See Compute Shaders for cross-platform compatibility information.

 The stride you declare for your compute buffer must match the stride in the buffer declaration of the shader you use it with. If the two stride values do not match, Unity may crash without warning.

 Compute Buffers in Unity use Unit Stride. Additional resources: count.
