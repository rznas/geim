<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder-gpuSampleBlockCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the number of Begin/End time pairs that the GPU executed during a frame. The Recorder has a three frame delay so this gives the timings for the frame that was three frames before the one that you access this property on. (Read Only).

This represents the number of complete, or running, GPU profiling block during the frame.
