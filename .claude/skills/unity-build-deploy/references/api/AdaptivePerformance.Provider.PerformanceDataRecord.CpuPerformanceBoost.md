<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.PerformanceDataRecord.CpuPerformanceBoost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The currently active CPU boost state. This is typically true if previously enabled with IDevicePerformanceLevelControl.EnableCpuBoost once the boost is successfully applied. Adaptive Performance might also change this level on its own. This typically happens when the device is thermal throttling or when IDevicePerformanceLevelControl.EnableCpuBoost fails. Once the CPU boost is enabled it is active until you receive a callback that it is disabled. CPU boost level has changed when Feature.CpuPerformanceBoost bit is set in ChangeFlags.
