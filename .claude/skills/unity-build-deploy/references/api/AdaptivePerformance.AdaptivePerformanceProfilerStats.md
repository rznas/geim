<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceProfilerStats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Profiler Stats reporting helper class. Stores all adaptive performance markers and helper functions.

### Static Properties

| Property | Description |
| --- | --- |
| AdaptivePerformanceProfilerCategory | Profiler Category is set to scripts for Adaptive Performance. |
| AvgCPUMarker | Profiler counter to report cpu average frametime. |
| AvgFrametimeMarker | Profiler counter to report average frametime. |
| AvgGPUMarker | Profiler counter to report gpu average frametime. |
| BottleneckMarker | Profiler counter to report the bottleneck. |
| CurrentCPULevelMarker | Profiler counter to report cpu performance level. |
| CurrentCPUMarker | Profiler counter to report cpu frametime. |
| CurrentFrametimeMarker | Profiler counter to report frametime. |
| CurrentGPULevelMarker | Profiler counter to report gpu performance level. |
| CurrentGPUMarker | Profiler counter to report gpu frametime. |
| kAdaptivePerformanceProfilerModuleGuid | GUID for the Adaptive Performance Profile Module definition. |
| kScalerDataTag | The Scaler data tag defines a tag for the scalers to send them via the emit frame data function. |
| PerformanceModeMarker | Profiler counter to report the performance mode. |
| TemperatureLevelMarker | Profiler counter to report the temperature level. |
| TemperatureTrendMarker | Profiler counter to report the temperature trend. |
| WarningLevelMarker | Profiler counter to report the thermal warning level. |

### Static Methods

| Method | Description |
| --- | --- |
| EmitScalerDataToProfilerStream | Adaptive Performance sends scaler data to the profiler each frame. It is collected from multiple places with this method and flushed once with FlushScalerDataToProfilerStream. |
| FlushScalerDataToProfilerStream | Flushes the Adaptive Performance scaler data for this frame. Used in conjunction with EmitScalerDataToProfilerStream. |
