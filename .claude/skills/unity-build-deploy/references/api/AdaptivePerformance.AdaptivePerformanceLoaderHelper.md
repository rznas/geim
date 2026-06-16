<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceLoaderHelper.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adaptive Performance Loader abstract subclass used as a base class for specific provider implementations. Class provides some helper logic that can be used to handle subsystem handling in a typesafe manner, reducing potential boilerplate code.

### Public Methods

| Method | Description |
| --- | --- |
| Deinitialize | Override of Deinitialize to provide for clearing the instance map. If you override Deinitialize in your subclass, you must call the base implementation to allow the instance map tp be cleaned up correctly. |
| GetLoadedSubsystem | Gets the loaded subsystem of the specified type. This is implementation-specific, because implementations contain data on what they have loaded and how best to get it. |

### Protected Methods

| Method | Description |
| --- | --- |
| CreateSubsystem | Creates a subsystem with a given list of descriptors and a specific subsystem id. |
| DestroySubsystem | Destroy a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |
| StartSubsystem | Start a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |
| StopSubsystem | Stop a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Initialized | Returns if the provider loader was initialized successfully. |
| Running | Returns if the provider loader is currently running. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetDefaultSubsystem | Gets the loaded default subsystem. |
| GetSettings | Gets the Settings of the loader used to descibe the loader and subsystems. |
| Initialize | Initialize the loader. This should initialize all subsystems to support the desired runtime setup this loader represents. |
| Start | Ask loader to start all initialized subsystems. |
| Stop | Ask loader to stop all initialized subsystems. |
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
