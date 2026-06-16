<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.IDevicePerformanceLevelControl.SetPerformanceLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cpu | The new performance level. Can be Constants.UnknownPerformanceLevel or range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxCpuPerformanceLevel]. If Feature.CpuPerformanceLevel is not supported (see AdaptivePerformanceSubsystem.Capabilities), this parameter is ignored. |
| gpu | The new performance level. Can be Constants.UnknownPerformanceLevel or range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxGpuPerformanceLevel]. If Feature.GpuPerformanceLevel is not supported (see AdaptivePerformanceSubsystem.Capabilities), this parameter is ignored. |

### Returns

**bool** Returns true on success. When this fails, it means that the system took control of the active performance levels.

### Description

Request a performance level change. If Constants.UnknownPerformanceLevel is passed, the subsystem picks the level to be used.
