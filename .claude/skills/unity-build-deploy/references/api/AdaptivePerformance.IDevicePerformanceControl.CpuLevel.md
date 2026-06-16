<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IDevicePerformanceControl.CpuLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The requested CPU performance level. Higher levels typically allow CPU cores to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to set the CpuLevel as low as possible to save power. The valid value range is Constants.MinCpuPerformanceLevel, IDevicePerformanceControl.MaxCpuPerformanceLevel].
