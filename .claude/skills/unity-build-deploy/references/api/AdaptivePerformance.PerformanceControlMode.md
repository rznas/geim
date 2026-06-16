<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.PerformanceControlMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum used to describe the performance control mode used by Adaptive Performance. Can be read from IDevicePerformanceControl.PerformanceControlMode.

### Properties

| Property | Description |
| --- | --- |
| Automatic | Adaptive Performance controls performance levels automatically (default). This mode is enabled by setting IDevicePerformanceControl.AutomaticPerformanceControl to true. |
| Manual | You can control performance levels via IDevicePerformanceControl.CpuLevel and IDevicePerformanceControl.GpuLevel. This mode is enabled by setting IDevicePerformanceControl.AutomaticPerformanceControl to false. |
| System | The operating system controls performance levels. This happens if manual control is not supported or if the system is in a thermal throttling state, at which point the operating system takes over control automatically. |
