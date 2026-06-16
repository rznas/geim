<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Sampler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides control over a CPU Profiler label.

Sampler is a counter which produces timings information you can see in CPU Profiler. Use this class to get information about built-in or custom Profiler label.

Additional resources: Sampler.Get, CustomSampler, CPU Usage Profiler.

### Properties

| Property | Description |
| --- | --- |
| isValid | Returns true if Sampler is valid. (Read Only) |
| name | Sampler name. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| GetRecorder | Returns Recorder associated with the Sampler. |

### Static Methods

| Method | Description |
| --- | --- |
| Get | Returns Sampler object for the specific CPU Profiler label. |
| GetNames | Returns number and names of all registered Profiler labels. |
