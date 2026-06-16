<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IAdaptivePerformance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The main interface to access Adaptive Performance. None of the properties in this interface change after startup. This means the references returned by the properties may be cached by the user.

### Properties

| Property | Description |
| --- | --- |
| Active | Returns true if Adaptive Performance was initialized and is actively running, false otherwise. This means that Adaptive Performance is enabled in StartupSettings. |
| DevelopmentSettings | Access to development (logging) settings. |
| DevicePerformanceControl | Control CPU and GPU performance of the device. |
| Indexer | Access to the Indexer system. See AdaptivePerformanceIndexer |
| Initialized | Returns true if Adaptive Performance was initialized successfully, false otherwise. This means that Adaptive Performance is enabled in StartupSettings and the application runs on a device that supports Adaptive Performance. |
| PerformanceModeStatus | Access performance mode status information of the device. |
| PerformanceStatus | Access performance status information of the device and your application. |
| Settings | Access to the Settings. See IAdaptivePerformanceSettings. |
| Subsystem | Access to the active Subsystem. See Provider.AdaptivePerformanceSubsystem. |
| ThermalStatus | Access thermal status information of the device. |

### Public Methods

| Method | Description |
| --- | --- |
| DeinitializeAdaptivePerformance | Stops Adaptive Performance (if still running) and initiates the tear down process. When this completes successfully, Initialized will be false. |
| InitializeAdaptivePerformance | Initiates the initialization process for Adaptive Performance by attempting to initialize the loaders. When this completes successfully, Initialized will be true. Adaptive Performance can now be started by calling the StartAdaptivePerformance method. |
| StartAdaptivePerformance | Attempts to start Adaptive Performance by requesting the active loader and all subsystems to start. When this completes successfully, Active will be true. |
| StopAdaptivePerformance | Attempts to stop Adaptive Performance by requesting the active loader and all subsystems to stop. When this completes successfully, Active will be false. |
| SupportedFeature | List of supported Features by the loaded provider. See Provider.Feature. |
