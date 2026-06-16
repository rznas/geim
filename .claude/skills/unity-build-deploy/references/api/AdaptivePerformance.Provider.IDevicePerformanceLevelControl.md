<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.IDevicePerformanceLevelControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The device performance level control lets you change CPU and GPU levels and informs you about the current levels.

### Properties

| Property | Description |
| --- | --- |
| MaxCpuPerformanceLevel | Maximum supported CPU performance level. This should not change after startup. Constants.UnknownPerformanceLevel in case performance levels are not supported. Value in the range of Constants.MinCpuPerformanceLevel, 10]. |
| MaxGpuPerformanceLevel | Maximum supported GPU performance level. This should not change after startup. Constants.UnknownPerformanceLevel in case performance levels are not supported. Value in the range of Constants.MinGpuPerformanceLevel, 10]. |

### Public Methods

| Method | Description |
| --- | --- |
| EnableCpuBoost | Request a CPU performance boost. |
| EnableGpuBoost | Request a GPU performance boost. |
| SetPerformanceLevel | Request a performance level change. If Constants.UnknownPerformanceLevel is passed, the subsystem picks the level to be used. |
