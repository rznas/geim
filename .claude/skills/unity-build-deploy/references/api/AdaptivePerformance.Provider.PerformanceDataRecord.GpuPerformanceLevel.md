<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.PerformanceDataRecord.GpuPerformanceLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The currently active GPU performance level. This is typically the value previously set with IDevicePerformanceLevelControl.SetPerformanceLevel once the levels are successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.SetPerformanceLevel failed. GPU performance level has a value in the range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxGpuPerformanceLevel], or Constants.UnknownPerformanceLevel. A value of Constants.UnknownPerformanceLevel means that Adaptive Performance took control of performance levels. GPU performance level has changed when Feature.GpuPerformanceLevel bit is set in ChangeFlags.
