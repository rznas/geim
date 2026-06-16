<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.PerformanceDataRecord.GpuPerformanceBoost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The currently active GPU boost state. This is typically true if previously enabled with IDevicePerformanceLevelControl.EnableGpuBoost once the boost is successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.EnableGpuBoost fails. Once the GPU boost is enabled it is active until you receive a callback that it is disabled. GPU boost level has changed when Feature.GpuPerformanceBoost bit is set in ChangeFlags.
