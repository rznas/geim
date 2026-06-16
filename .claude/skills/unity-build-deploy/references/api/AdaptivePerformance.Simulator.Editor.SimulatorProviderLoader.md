<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Simulator.Editor.SimulatorProviderLoader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SimulatorProviderLoader implements the loader for the Adaptive Performance Device Simulator plugin.

### Properties

| Property | Description |
| --- | --- |
| Initialized | Returns if the provider loader was initialized successfully. |
| Running | Returns if the provider loader is currently running. |
| simulatorSubsystem | Returns the currently active Simulator Subsystem instance, if any. |

### Public Methods

| Method | Description |
| --- | --- |
| Deinitialize | Implementation of AdaptivePerformanceLoader.Deinitialize. |
| GetDefaultSubsystem | Implementation of AdaptivePerformanceLoader.GetDefaultSubsystem |
| GetSettings | Implementation of AdaptivePerformanceLoader.GetSettings. |
| Initialize | Implementation of AdaptivePerformanceLoader.Initialize. |
| Start | Implementation of AdaptivePerformanceLoader.Start. |
| Stop | Implementation of AdaptivePerformanceLoader.Stop. |

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
| GetLoadedSubsystem | Gets the loaded subsystem of the specified type. This is implementation-specific, because implementations contain data on what they have loaded and how best to get it. |
| GetLoadedSubsystem | Gets the loaded subsystem of the specified type. This is implementation-specific, because implementations contain data on what they have loaded and how best to get it. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| CreateSubsystem | Creates a subsystem with a given list of descriptors and a specific subsystem id. |
| DestroySubsystem | Destroy a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |
| StartSubsystem | Start a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |
| StopSubsystem | Stop a subsystem instance of a given type. Subsystem is assumed to already be loaded from a previous call to CreateSubsystem. |

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
