<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.PerformanceDataRecord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The performance data record stores all information about the thermal and performance status and delivers it from the provider subsystem to Adaptive Performance for further processing.

### Properties

| Property | Description |
| --- | --- |
| ChangeFlags | A bitset of features which indicate if their value changed in the last frame or at startup. Unsupported features will never change. Fields not changing always have valid data as long as its capability is supported. |
| ClusterInfo | Current CPU cluster information information. Includes number of big, medium and small cores use at the application startup. |
| CpuFrameTime | The time in seconds spent by the CPU for rendering the last complete frame. Has changed when Feature.CpuFrameTime bit is set in ChangeFlags. |
| CpuPerformanceBoost | The currently active CPU boost state. This is typically true if previously enabled with IDevicePerformanceLevelControl.EnableCpuBoost once the boost is successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.EnableCpuBoost fails. Once the CPU boost is enabled it is active until you receive a callback that it is disabled. CPU boost level has changed when Feature.CpuPerformanceBoost bit is set in ChangeFlags. |
| CpuPerformanceLevel | The currently active CPU performance level. This is typically the value previously set with IDevicePerformanceLevelControl.SetPerformanceLevel once the levels are successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.SetPerformanceLevel failed. CPU performance level has a value in the range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxCpuPerformanceLevel], or Constants.UnknownPerformanceLevel. A value of Constants.UnknownPerformanceLevel means that Adaptive Performance took control of performance levels. CPU performance level has changed when Feature.CpuPerformanceLevel bit is set in ChangeFlags. |
| GpuFrameTime | The time in seconds spent by the GPU for rendering the last complete frame. Has changed when Feature.GpuFrameTime bit is set in ChangeFlags. |
| GpuPerformanceBoost | The currently active GPU boost state. This is typically true if previously enabled with IDevicePerformanceLevelControl.EnableGpuBoost once the boost is successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.EnableGpuBoost fails. Once the GPU boost is enabled it is active until you receive a callback that it is disabled. GPU boost level has changed when Feature.GpuPerformanceBoost bit is set in ChangeFlags. |
| GpuPerformanceLevel | The currently active GPU performance level. This is typically the value previously set with IDevicePerformanceLevelControl.SetPerformanceLevel once the levels are successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.SetPerformanceLevel failed. GPU performance level has a value in the range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxGpuPerformanceLevel], or Constants.UnknownPerformanceLevel. A value of Constants.UnknownPerformanceLevel means that Adaptive Performance took control of performance levels. GPU performance level has changed when Feature.GpuPerformanceLevel bit is set in ChangeFlags. |
| OverallFrameTime | The total time in seconds spent for the frame. Has changed when Feature.OverallFrameTime bit is set in ChangeFlags. |
| PerformanceLevelControlAvailable | True if =performance levels can currently be controlled manually and aren't controlled by Adaptive Performance or the operating system. Has changed when Feature.PerformanceLevelControl bit is set in ChangeFlags. |
| PerformanceMode | Current Performance mode information. |
| TemperatureLevel | The current normalized temperature level in the range of [0.0, 1.0], or -1.0 when not supported or not available right now. A level of 1.0 means that the device is thermal throttling. The temperature level has changed when the Feature.TemperatureLevel bit is set in ChangeFlags. |
| TemperatureTrend | The current temperature trend in the range of [-1.0, 1.0] that is a metric of temperature change over time. The temperature trend is constant at 0.0 in case the feature is not supported. The temperature trend has changed when Feature.TemperatureTrend bit is set in ChangeFlags. |
| WarningLevel | The current warning level as documented in Feature.WarningLevel. The warning level has changed when Feature.WarningLevel bit is set in ChangeFlags. |
