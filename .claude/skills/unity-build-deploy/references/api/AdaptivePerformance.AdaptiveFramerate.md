<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptiveFramerate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A scaler used by AdaptivePerformanceIndexer to adjust the application update rate using Application.targetFrameRate.

### Protected Methods

| Method | Description |
| --- | --- |
| Awake | Ensures settings are applied during startup. |
| OnDisabled | Callback when scaler gets disabled and removed from indexer |
| OnEnabled | Callback when scaler gets enabled and added to the indexer |
| OnLevelDecrease | Callback for when the quality level is increased/scaler level decreased. |
| OnLevelIncrease | Callback for when the quality level is decreased/scaler level increased. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| CpuImpact | Scaler impact on CPU so far in milliseconds. |
| CurrentLevel | Returns the current level of scale. |
| DefaultSetting | Default settings for this scaler. |
| Enabled | Returns true if this scaler is active, otherwise returns false. |
| GpuImpact | Scaler impact on GPU so far in milliseconds. |
| IsMaxLevel | Returns true if the scaler can no longer be applied, otherwise returns false. |
| MaxBound | Returns the maximum boundary of this scaler. |
| MaxLevel | Returns the maximum level of this scaler. |
| MinBound | Returns the minimum boundary of this scaler. |
| Name | Returns a string with the name of the scaler. |
| NotLeveled | Returns true if the scaler is not applied, otherwise returns false. |
| OverrideLevel | Allows you to manually override the scaler level. If the value is -1, AdaptivePerformanceIndexer will handle levels, otherwise scaler will be forced to the value you specify. |
| Scale | Returns a generic scale of this scaler in range [0,1] which is applied to the quality. |
| Target | Returns the bottlenecks that this scaler targets. |
| VisualImpact | Returns the visual impact of scaler when applied. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyDefaultSetting | Any scaler with settings in IAdaptivePerformanceSettings needs to call this method and provide the scaler specific setting. Unity uses the setting arguments in the base-scaler as the default settings. This is also used by Scaler Profiles to apply their Settings. |
| CalculateCost | Calculate the cost of applying this particular scaler. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnLevel | Callback for any level change |
| ScaleChanged | Checks if scale changed based on the current level and returns true if scale changed false otherwise. |

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
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
