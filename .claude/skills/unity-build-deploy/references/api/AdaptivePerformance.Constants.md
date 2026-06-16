<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Constants.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constants used by Adaptive Performance.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultAverageFrameCount | The number of past frames that are considered to calculate average frame times. |
| MaxTemperatureLevel | The maximum temperature level. See ThermalMetrics.TemperatureLevel. |
| MinCpuPerformanceLevel | The minimum CPU level. Used by IDevicePerformanceControl.CpuLevel and PerformanceMetrics.CurrentCpuLevel. |
| MinGpuPerformanceLevel | The minimum GPU level. Used by IDevicePerformanceControl.GpuLevel and PerformanceMetrics.CurrentGpuLevel. |
| MinTemperatureLevel | The minimum temperature level. See ThermalMetrics.TemperatureLevel. |
| UnknownPerformanceLevel | UnknownPerformanceLevel is the value of IDevicePerformanceControl.GpuLevel, PerformanceMetrics.CurrentGpuLevel, IDevicePerformanceControl.CpuLevel, and PerformanceMetrics.CurrentCpuLevel if the current performance level is unknown. This can happen when AdaptivePerformance is not supported or when the device is in throttling state (see WarningLevel.Throttling). |
