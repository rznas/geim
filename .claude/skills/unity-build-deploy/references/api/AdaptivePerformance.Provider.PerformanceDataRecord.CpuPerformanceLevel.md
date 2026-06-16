<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.PerformanceDataRecord.CpuPerformanceLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The currently active CPU performance level. This is typically the value previously set with IDevicePerformanceLevelControl.SetPerformanceLevel once the levels are successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.SetPerformanceLevel failed. CPU performance level has a value in the range of Constants.MinCpuPerformanceLevel, IDevicePerformanceLevelControl.MaxCpuPerformanceLevel], or Constants.UnknownPerformanceLevel. A value of Constants.UnknownPerformanceLevel means that Adaptive Performance took control of performance levels. CPU performance level has changed when Feature.CpuPerformanceLevel bit is set in ChangeFlags.
