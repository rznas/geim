<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IPerformanceStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

You can use the performance status interface to obtain performance metrics, frame timing, and subscribe to bottleneck and performance event changes.

### Properties

| Property | Description |
| --- | --- |
| FrameTiming | Allows you to query the latest frame timing measurements. |
| PerformanceMetrics | Allows you to query the latest performance metrics. |
| PerformanceMode | Allows you to query the latest performance mode. |

### Events

| Event | Description |
| --- | --- |
| PerformanceBoostChangeEvent | Subscribe to events and get updates when the the current CPU or GPU is boosted. |
| PerformanceBottleneckChangeEvent | Subscribe to performance events and get updates when the bottleneck changes. |
| PerformanceLevelChangeEvent | Subscribe to events and get updates when the the current CPU or GPU level changes. |
