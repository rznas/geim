<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.AdaptivePerformanceModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adaptive Performance is a built-in module that allows users to adjust settings based on performance metrics.

### Classes

| Class | Description |
| --- | --- |
| AdaptiveBatching | A scaler used by AdaptivePerformanceIndexer to control if dynamic batching is enabled. |
| AdaptiveDecals | A scaler used by AdaptivePerformanceIndexer to adjust the view distance of decals. |
| AdaptiveFramerate | A scaler used by AdaptivePerformanceIndexer to adjust the application update rate using Application.targetFrameRate. |
| AdaptiveLayerCulling | A scaler used by AdaptivePerformanceIndexer for adjusting layer culling distances. |
| AdaptiveLOD | A scaler used by AdaptivePerformanceIndexer for adjusting at what distance LODs are switched. |
| AdaptiveLut | A scaler used by AdaptivePerformanceIndexer to adjust the size of the palette used for color grading in URP. |
| AdaptiveMSAA | A scaler used by AdaptivePerformanceIndexer to adjust the level of antialiasing. |
| AdaptivePerformanceConfigurationDataAttribute | This attribute is used to tag classes as providing build settings support for an Adaptive Performance provider. The unified setting system will present the settings as an inspectable object in the Project Settings window using the built-in inspector UI. The implementor of the settings is able to create their own custom UI and the Project Settings system will use that UI in place of the build-in one in the Inspector. See the Extending the Editor page in the Unity Manual for more information. |
| AdaptivePerformanceGeneralSettings | A ScriptableObject that contains global settings applicable to all Adaptive Performance providers. |
| AdaptivePerformanceIndexer | Higher level implementation of Adaptive performance that tracks performance and thermal states of the device and provides them to AdaptivePerformanceScaler which use the information to increase or decrease performance levels. System acts as AdaptivePerformanceScaler manager and handles the lifetime of the scalers in the scenes. |
| AdaptivePerformanceIndexerSettings | Settings of indexer system. |
| AdaptivePerformanceLoader | Adaptive Performance Loader abstract class used as a base class for specific provider implementations. Providers should implement subclasses of this to provide specific initialization and management implementations that make sense for their supported scenarios and needs. |
| AdaptivePerformanceLoaderHelper | Adaptive Performance Loader abstract subclass used as a base class for specific provider implementations. Class provides some helper logic that can be used to handle subsystem handling in a typesafe manner, reducing potential boilerplate code. |
| AdaptivePerformanceManagerSettings | Class to handle active loader and subsystem management for Adaptive Performance. This class is to be added as a ScriptableObject asset in your project and should only be referenced by an AdaptivePerformanceGeneralSettings instance for its use. Given a list of loaders, it will attempt to load each loader in the given order. Unity will use the first loader that is successful and ignore all remaining loaders. The successful loader is accessible through the activeLoader property on the manager. Depending on configuration, the AdaptivePerformanceGeneralSettings instance will automatically manage the active loader at the correct points in the application lifecycle. You can override certain points in the active loader lifecycle and manually manage them by toggling the AdaptivePerformanceManagerSettings.automaticLoading and AdaptivePerformanceManagerSettings.automaticRunning properties. Disabling AdaptivePerformanceManagerSettings.automaticLoading implies that you are responsible for the full lifecycle of the Adaptive Performance session normally handled by the AdaptivePerformanceGeneralSettings instance. Setting this to false also sets AdaptivePerformanceManagerSettings.automaticRunning to false. Disabling AdaptivePerformanceManagerSettings.automaticRunning only implies that you are responsible for starting and stopping the activeLoader through the StartSubsystems and StopSubsystems APIs. Unity executes atomatic lifecycle management as follows: " OnEnable calls InitializeLoader internally. The loader list will be iterated over and the first successful loader will be set as the active loader. " Start calls StartSubsystems internally. Ask the active loader to start all subsystems. " OnDisable calls StopSubsystems internally. Ask the active loader to stop all subsystems. " OnDestroy calls DeinitializeLoader internally. Deinitialize and remove the active loader. |
| AdaptivePerformanceProfilerStats | Profiler Stats reporting helper class. Stores all adaptive performance markers and helper functions. |
| AdaptivePerformanceRenderSettings | This class is used to store changes to a number of rendering quality settings that are applied when using the Universal Render Pipeline. |
| AdaptivePerformanceScaler | Abstract class representing single feature that is controlled by AdaptivePerformanceIndexer. You control the quality through changing the levels, where 0 represents the controller not being applied and 1,2... as applied. As a result, a higher level represents lower visuals, but better performance. |
| AdaptivePerformanceScalerProfile | Scaler profiles are used to combine all settings of scalers into one profile to be able to change the settings of each scaler at once. |
| AdaptivePerformanceScalerSettings | Settings of indexer system. |
| AdaptivePerformanceScalerSettingsBase | Settings of indexer system. |
| AdaptivePerformanceSubsystem | A class to define a provider subsystem for Adaptive Performance. |
| AdaptivePerformanceSubsystemBase<T0,T1,T2> | Base class for subsystems to create your custom provider subsystem to deliver data from your provider to Adaptive Performance. |
| AdaptivePerformanceSubsystemDescriptor | The Adaptive Performance Subsystem Descriptor is used for describing the subsystem so it can be picked up by the subsystem management system. |
| AdaptivePhysics | A scaler used by AdaptivePerformanceIndexer for adjusting how physics is applied. |
| AdaptiveResolution | A scaler used by AdaptivePerformanceIndexer to adjust the resolution of all render targets that allow dynamic resolution. If a device or graphics API doesn't support a dynamic resolution, it will use the rendering pipeline's render scale multiplier as a fallback. |
| AdaptiveShadowCascade | A scaler used by AdaptivePerformanceIndexer to adjust the number of shadow cascades to be used. |
| AdaptiveShadowDistance | A scaler used by AdaptivePerformanceIndexer to change the distance at which shadows are rendered. |
| AdaptiveShadowmapResolution | A scaler used by AdaptivePerformanceIndexer to adjust the resolution of shadow maps. |
| AdaptiveShadowQuality | A scaler used by AdaptivePerformanceIndexer to adjust the quality of shadows. |
| AdaptiveSorting | A scaler used by AdaptivePerformanceIndexer to change if objects in the scene are sorted by depth before rendering to reduce overdraw. |
| AdaptiveTransparency | A scaler used by AdaptivePerformanceIndexer to toggle rendering of transparent objects. |
| AdaptiveViewDistance | A scaler used by AdaptivePerformanceIndexer for adjusting what view distance is applied to the camera. |
| BasicProviderConstants | Static class that stores the setting key for basic provider. |
| BasicProviderSettings | Basic provider Settings. |
| Constants | Constants used by Adaptive Performance. |
| Holder | Global access to the default Adaptive Performance interface and lifecycle management controls. |
| IAdaptivePerformanceSettings | Provider Settings Interface as base class of the provider. Used to control the Editor runtime asset instance which stores the Settings. |

### Structs

| Struct | Description |
| --- | --- |
| ClusterInfo | The cluster info describes the CPU Cluster setup. |
| FrameTiming | FrameTiming stores timing information about CPU, GPU, and the overall frame time. |
| PerformanceBoostChangeEventArgs | Event arguments for boost changes. These are used in the PerformanceBottleneckChangeHandler. |
| PerformanceBottleneckChangeEventArgs | Event arguments for performance bottleneck changes. These are used in the PerformanceBottleneckChangeHandler. |
| PerformanceDataRecord | The performance data record stores all information about the thermal and performance status and delivers it from the provider subsystem to Adaptive Performance for further processing. |
| PerformanceLevelChangeEventArgs | Arguments for the performance level change event. These are used in the PerformanceLevelChangeHandler. |
| PerformanceMetrics | PerformanceMetrics store the current bottleneck, CPU, and GPU levels |
| ThermalMetrics | ThermalMetrics stores the thermal state as TemperatureLevel, TemperatureTrend, and WarningLevel. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| Feature | Feature flags See PerformanceDataRecord.ChangeFlags and AdaptivePerformanceSubsystem.Capabilities. |
| LifecycleChangeType | Types of Adaptive Performance lifecycle changes. |
| PerformanceBottleneck | The performance bottleneck enum describes what is currently limiting the system. |
| PerformanceControlMode | Enum used to describe the performance control mode used by Adaptive Performance. Can be read from IDevicePerformanceControl.PerformanceControlMode. |
| PerformanceMode | The performance mode enum describes what is currently the active performance mode of the stystem. |
| ScalerTarget | Bottleneck flags that the scaler targets. |
| ScalerVisualImpact | Scaler impact on visuals. |
| StateAction | Describes what action is needed to stabilize. |
| WarningLevel | Warning levels are used in the ThermalMetrics and describe the thermal status of the device. There are three possible statuses. |
