<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Basic.BasicProviderSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Basic provider Settings.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| ActiveScalerProfile | The currently active scaler profile. Only one scaler profile is active at a time. |
| automaticGameMode | Whether automated target frame rate based on device GameMode settings should be used. |
| automaticPerformanceMode | The initial value of IDevicePerformanceControl.AutomaticPerformanceControl. |
| defaultScalerProfilerIndex | Default scaler profile index. |
| enableBoostOnStartup | Whether CPU and GPU boost mode should be enabled on application startup. |
| indexerSettings | Settings of indexer system. |
| logging | Control debug logging. This setting only affects development builds. All logging is disabled in release builds. This setting can also be controlled after startup using IDevelopmentSettings.Logging. Logging is disabled by default. |
| ScalerProfiles | List of created scaler profiles for this provider. |
| scalerSettings | Settings of scaler system. |
| statsLoggingFrequencyInFrames | Adjust the frequency in frames at which the application logs frame statistics to the console. This is only relevant when logging is enabled. See IDevelopmentSettings.Logging. This setting can also be controlled after startup using IDevelopmentSettings.LoggingFrequencyInFrames. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddScalerProfileWithDefaultScalers | Add a new scaler profile with default scaler settings. |
| DeleteScalerProfileAt | Delete a scaler profile at the given index. |
| GetAvailableScalerProfiles | Returns a list of all available scaler profiles. |
| LoadScalerProfile | Load a scaler profile from the settings. Unity update the values of all scalers in the profile to new ones. This is a heavy operation using reflection and should not be used per frame and only in load operations as it causes hitching and possible screen artifacts depending on which scalers are used in a scene. |
| OnEnable | When Unity enables the serialized object it upgrades old files to the new format in the editor and saves the assets. Empty during runtime. |
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
