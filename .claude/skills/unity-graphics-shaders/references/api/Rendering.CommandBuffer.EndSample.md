<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.EndSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the profile information used for sampling. |
| sampler | The CustomSampler that the CommandBuffer uses for sampling. |
| marker | The ProfilerMarker that the CommandBuffer uses for sampling. |

### Description

Adds a command to end profile sampling.

Schedules a performance profiling sample to end when the Command Buffer reaches this point.

 To begin a performance profiling sample, call CommandBuffer.BeginSample. At the and of the sample, call this method with the same argument as the BeginSample call.
