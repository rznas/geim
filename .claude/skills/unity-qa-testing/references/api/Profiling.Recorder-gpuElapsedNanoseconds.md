<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder-gpuElapsedNanoseconds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the accumulated GPU time, in nanoseconds, for a frame. The Recorder has a three frame delay so this gives the timings for the frame that was three frames before the one that you access this property on. (Read Only).

To get valid timings, the platform must support the GPU Recorder. To check this, use SystemInfo.supportsGpuRecorder.
