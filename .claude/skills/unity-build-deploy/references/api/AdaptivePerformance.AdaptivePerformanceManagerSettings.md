<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceManagerSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class to handle active loader and subsystem management for Adaptive Performance. This class is to be added as a ScriptableObject asset in your project and should only be referenced by an AdaptivePerformanceGeneralSettings instance for its use.

 Given a list of loaders, it will attempt to load each loader in the given order. Unity will use the first loader that is successful and ignore all remaining loaders. The successful loader is accessible through the activeLoader property on the manager.

 Depending on configuration, the AdaptivePerformanceGeneralSettings instance will automatically manage the active loader at the correct points in the application lifecycle. You can override certain points in the active loader lifecycle and manually manage them by toggling the AdaptivePerformanceManagerSettings.automaticLoading and AdaptivePerformanceManagerSettings.automaticRunning properties. Disabling AdaptivePerformanceManagerSettings.automaticLoading implies that you are responsible for the full lifecycle of the Adaptive Performance session normally handled by the AdaptivePerformanceGeneralSettings instance. Setting this to false also sets AdaptivePerformanceManagerSettings.automaticRunning to false.

 Disabling AdaptivePerformanceManagerSettings.automaticRunning only implies that you are responsible for starting and stopping the activeLoader through the StartSubsystems and StopSubsystems APIs.

 Unity executes atomatic lifecycle management as follows:

 " OnEnable calls InitializeLoader internally. The loader list will be iterated over and the first successful loader will be set as the active loader. " Start calls StartSubsystems internally. Ask the active loader to start all subsystems. " OnDisable calls StopSubsystems internally. Ask the active loader to stop all subsystems. " OnDestroy calls DeinitializeLoader internally. Deinitialize and remove the active loader.

### Properties

| Property | Description |
| --- | --- |
| activeLoader | Returns the current singleton active loader instance. |
| automaticLoading | Get and set Automatic Loading state for this manager. When this is true, the manager will automatically call InitializeLoader and DeinitializeLoader for you. When false, automaticRunning is also set to false and remains that way. This means that disabling automatic loading disables all automatic behavior for the manager. |
| automaticRunning | Get and set the automatic running state for this manager. When this is true, the manager will call StartSubsystems and StopSubsystems APIs at appropriate times. When false, or when automaticLoading is false, it is up to the user of the manager to handle that same functionality. |
| isInitializationComplete | Read-only boolean that is true if initialization is completed and false otherwise. Because initialization is handled as a Coroutine, applications that use the auto-lifecycle management of AdaptivePerformanceManager will need to wait for init to complete before checking for an ActiveLoader and calling StartSubsystems. |
| loaders | List of loaders currently managed by this Adaptive Performance Manager instance. |

### Public Methods

| Method | Description |
| --- | --- |
| ActiveLoaderAs | Returns the current active loader, cast to the requested type. Useful shortcut when you need to get the active loader as something less generic than AdaptivePerformanceLoader. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| CreateInstance | Creates an instance of a scriptable object. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
