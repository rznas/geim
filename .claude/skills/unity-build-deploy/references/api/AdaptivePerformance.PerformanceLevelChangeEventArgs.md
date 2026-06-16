<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.PerformanceLevelChangeEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Arguments for the performance level change event. These are used in the PerformanceLevelChangeHandler.

### Properties

| Property | Description |
| --- | --- |
| CpuLevel | The new CPU level. |
| CpuLevelDelta | The difference in CPU levels 0 if the previous or new level equals Constants.UnknownPerformanceLevel. |
| GpuLevel | The new GPU level. |
| GpuLevelDelta | The difference in GPU levels. 0 if either the previous or the new level equals Constants.UnknownPerformanceLevel. |
| ManualOverride | True if the change was caused by manual adjustments to IDevicePerformanceControl.CpuLevel or IDevicePerformanceControl.GpuLevel during automatic mode, false otherwise. |
| PerformanceControlMode | The current PerformanceControlMode. See IDevicePerformanceControl.PerformanceControlMode. |
