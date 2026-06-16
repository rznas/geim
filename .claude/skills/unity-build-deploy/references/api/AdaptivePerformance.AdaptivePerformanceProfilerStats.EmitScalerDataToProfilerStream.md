<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceProfilerStats.EmitScalerDataToProfilerStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scalerName | The name of the scaler. 320 characters max. |
| enabled | If the scaler is currently enabled. |
| overrideLevel | The override state of the scaler. |
| currentLevel | The current level of the scaler. |
| scale | The actual scale of the scaler. |
| applied | If the scaler is currently applied. |
| maxLevel | The maximum level of the scaler. |

### Description

Adaptive Performance sends scaler data to the profiler each frame. It is collected from multiple places with this method and flushed once with FlushScalerDataToProfilerStream.
