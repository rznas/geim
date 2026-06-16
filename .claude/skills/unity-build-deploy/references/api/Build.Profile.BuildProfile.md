<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a set of configuration settings you can use to build your application on a particular platform.

Additional resources: BuildPlayerWithProfileOptions.

### Properties

| Property | Description |
| --- | --- |
| overrideGlobalScenes | Overrides the global scene list. |
| scenes | The list of scenes specified in the build profile. |
| scriptingDefines | Lists the user-specified script compilation defines in the build profile. |

### Public Methods

| Method | Description |
| --- | --- |
| AddComponent | Adds a ScriptableObject to the build profile as a sub-asset. Only one instance per type can be embedded within a build profile. |
| CreateComponent | Creates a new instance of a given scriptable object and adds it as a sub-asset to the build profile. Only one instance per type can be embedded within a build profile. |
| GetComponent | Returns a component of type T. For PlayerSettings, returns the global fallback if no PlayerSettings component is found. Returns null if the component isn't available. |
| GetScenesForBuild | Obtains the list of scenes used when building with the build profile. |
| RemoveComponent | Removes a component of type T from a given build profile. |

### Static Methods

| Method | Description |
| --- | --- |
| GetActiveBuildProfile | Gets the active build profile. |
| GetActiveComponent | Returns a component of type T from the active build profile. For PlayerSettings, returns the global fallback if no PlayerSettings component is found. Returns null if the component isn't available. |
| SetActiveBuildProfile | Sets the active build profile. |

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
