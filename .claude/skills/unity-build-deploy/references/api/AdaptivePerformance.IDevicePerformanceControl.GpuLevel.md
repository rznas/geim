<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IDevicePerformanceControl.GpuLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The requested GPU performance level. Higher levels typically allow the GPU to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to set the GpuLevel as low as possible to save power. The valid value range is Constants.MinGpuPerformanceLevel, IDevicePerformanceControl.MaxGpuPerformanceLevel].
