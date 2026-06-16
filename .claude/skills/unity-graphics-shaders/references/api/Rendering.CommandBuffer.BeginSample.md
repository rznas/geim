<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.BeginSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the profile information used for sampling. |
| sampler | The CustomSampler that the CommandBuffer uses for sampling. |
| marker | The ProfilerMarker that the CommandBuffer uses for sampling. |

### Description

Adds a command to begin profile sampling.

Schedules a performance profiling sample to begin when the Command Buffer reaches this point. This is useful for measuring CPU and GPU time spent by one or more commands in the Command Buffer.

A profiling sample that starts with BeginSample must always end with a call to CommandBuffer.EndSample with the same argument.
