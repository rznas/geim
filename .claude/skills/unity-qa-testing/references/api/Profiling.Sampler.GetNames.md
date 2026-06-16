<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Sampler.GetNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| names | Preallocated list the Sampler names are written to. Or *null* if you want to get number of Samplers only. |

### Returns

**int** Number of active Samplers.

### Description

Returns number and names of all registered Profiler labels.

Use **GetNames** to get a number of available Samplers and fill the *names* list parameter with their names.

**Note:** At the moment all built-in counters are available only in the Editor and Development Players. **GetNames** in non-Development Players returns returns 0 and empty list.
