<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Simulator.Editor.SimulatorAdaptivePerformanceSubsystem.SimulatorProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Simulator Provider controls Subsystems needed to access Adaptive Performance features and the systems lifecycle.

### Properties

| Property | Description |
| --- | --- |
| AcceptsPerformanceLevel | Required to simulate performance changes. To change AutomaticPerformanceControl, you have to set AcceptsPerformanceLevel to true. See PerformanceDataRecord.PerformanceLevelControlAvailable. |
| ApplicationLifecycle | Returns the application lifecycle. |
| Capabilities | Returns the capabilities of the provider. |
| ChangeFlags | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.ChangeFlags. |
| CpuPerformanceBoost | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.CpuPerformanceBoost. |
| CpuPerformanceLevel | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.CpuPerformanceLevel. |
| GpuPerformanceBoost | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.GpuPerformanceBoost. |
| GpuPerformanceLevel | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.GpuPerformanceLevel. |
| Initialized | Returns the initialization status of the system. |
| MaxCpuPerformanceLevel | See IDevicePerformanceLevelControl.MaxCpuPerformanceLevel. |
| MaxGpuPerformanceLevel | See IDevicePerformanceLevelControl.MaxGpuPerformanceLevel. |
| NextCpuFrameTime | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.CpuFrameTime. |
| NextGpuFrameTime | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.GpuFrameTime. |
| NextOverallFrameTime | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.OverallFrameTime. |
| PerformanceLevelControl | Returns the performance level control. |
| PerformanceMode | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.PerformanceMode. |
| Stats | Returns the stats of the provider. |
| TemperatureLevel | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.TemperatureLevel. |
| TemperatureTrend | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.TemperatureTrend. |
| Version | The current version of the Device Simulator Adaptive Performance Subsystem. Matches the version of the Adaptive Performance Subsystem. See AdaptivePerformanceSubsystem.Version. |
| WarningLevel | This property is a wrapper around an internal PerformanceDataRecord object. For more details, see PerformanceDataRecord.WarningLevel. |

### Constructors

| Constructor | Description |
| --- | --- |
| SimulatorAdaptivePerformanceSubsystem.SimulatorProvider | Main constructor, used to initialize the provider capabilities. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplicationPause | Callback that is called when the application goes into a pause state. |
| ApplicationResume | Callback that is called when the application resumes after being paused. |
| Destroy | Cleanup when the subsystem object is destroyed. |
| EnableCpuBoost | Enable the boost mode for the CPU. |
| EnableGpuBoost | Enable the boost mode for the GPU. |
| SetClusterInfo | Helper for the device simulator to change cluster info settings. Those settings are usually changed by a device directly. |
| SetPerformanceLevel | Set the performance level for both the CPU and GPU. |
| Start | Perform initialization of the subsystem. |
| Stop | Stop running the subsystem. |
| Update | Update current results and flags. |

### Protected Methods

| Method | Description |
| --- | --- |
| TryInitialize | Simulator subsystem try to initialize initializes successfully. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| ApplicationLifecycle | Application lifecycle events to be consumed by subsystem. Can be null if the subsystem does not need special handling on life-cycle events. The returned reference does not change after startup. |
| Capabilities | Bitset of supported features. Does not change after startup. |
| Initialized | Returns if the subsystem is initialized successfully. |
| PerformanceLevelControl | Control CPU or GPU performance levels of the device. Can be null if the subsystem does not support controlling CPU/GPU performance levels. Is null when the Feature.PerformanceLevelControl bit is not set in Capabilities. The returned reference does not change after startup. |
| running | Returns if the subsystem is running. |
| Stats | Generates a human readable string of subsystem internal stats. Optional and only used for development. |
| Version | Returns the version of the subsystem implementation. Can be used together with SubsystemDescriptor to identify a subsystem. |
