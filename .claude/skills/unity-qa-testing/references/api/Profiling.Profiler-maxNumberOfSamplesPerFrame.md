<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler-maxNumberOfSamplesPerFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resize the profiler sample buffers to allow the desired amount of samples per thread.

If the Scene is very complex, the number of samples recorded for one frame can surpass the reserved number of samples. The preallocated buffers can then be resized using this API. If dynamic resizing is desired, set this value to -1. This will allow the profiler to increase memory to not skip frames.

The default value for maxNumberOfSamplesPerFrame is 512K samples per thread. The maximum value is 8M samples per thread unless -1 is assigned.
