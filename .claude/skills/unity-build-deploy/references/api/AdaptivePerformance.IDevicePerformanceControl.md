<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IDevicePerformanceControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The device performance control interface handles all control elements related to the device performance. You can change the IDevicePerformanceControl.AutomaticPerformanceControl settings or retrieve information about the CpuLevel and GpuLevel.

### Properties

| Property | Description |
| --- | --- |
| AutomaticPerformanceControl | When set to true, which is the default value, Adaptive Performance automatically sets CpuLevel and GpuLevel. |
| CpuLevel | The requested CPU performance level. Higher levels typically allow CPU cores to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to set the CpuLevel as low as possible to save power. The valid value range is Constants.MinCpuPerformanceLevel, IDevicePerformanceControl.MaxCpuPerformanceLevel]. |
| CpuPerformanceBoost | The requested CPU boost mode state. Enabled typically allows CPU cores to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to not use a boost often and certainly not continuously to save power. |
| GpuLevel | The requested GPU performance level. Higher levels typically allow the GPU to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to set the GpuLevel as low as possible to save power. The valid value range is Constants.MinGpuPerformanceLevel, IDevicePerformanceControl.MaxGpuPerformanceLevel]. |
| GpuPerformanceBoost | The requested GPU boost mode state. Enabled typically allows GPU cores to run at higher clock speeds. The consequence is that thermal warnings and throttling might happen sooner when the device cannot sustain high clock speeds. Changes are applied once per frame. It is recommended to not use a boost often and certainly not continuously to save power. |
| MaxCpuPerformanceLevel | The maximum valid CPU performance level you use with CpuLevel. The minimum value returned is Constants.MinCpuPerformanceLevel. This value does not change after startup is complete. |
| MaxGpuPerformanceLevel | The maximum valid GPU performance level you use with GpuLevel. The minimum value returned is Constants.MinGpuPerformanceLevel. This value does not change after startup is complete. |
| PerformanceControlMode | The current PerformanceControlMode. PerformanceControlMode is affected by AutomaticPerformanceControl. |
