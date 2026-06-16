<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsLowLevelSettings2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Physics LowLevel Settings Asset. This contains all the global physics options along with the default values for the following definitions: PhysicsWorldDefinitionPhysicsBodyDefinitionPhysicsShapeDefinitionPhysicsChainDefinition

### Properties

| Property | Description |
| --- | --- |
| bypassLowLevel | Controls the simulation and rendering of any PhysicsWorld. When true, no automatic simulation or rendering will occur (bypassed). When false, normal operation occurs with automatic simulation and rendering. The only case for this to be true is when the low-level physics is not being used at all so this would remove any overhead of simulation or rendering but in most cases, this should be false which is the default. |
| concurrentSimulations | Controls how many simulations can be started in parallel. Each one is started on its own worker and acts as its own main-thread. Workers should ideally be left free for the solver otherwise it may degrade solving performance. The actual quantity of workers used will always be capped to those available on the current device. If the total number of workers available is below 4 then parallel simulation won't occur however parallel solving using workers will. This should not be confused with the quantity of workers used when solving a simulation. See PhysicsWorldDefinition.simulationWorkers. |
| drawInBuild | Controls if the debug drawer can be used in a Player Development Build. |
| lengthUnitsPerMeter | The internal length units per meter. The physics system bases all length units on meters but you may need different units for your project. You can set this value to use different units but it should only be modified before any other calls to the physics system occur and only modified once. Changing this value after any physics object has been created can result in severe simulation instabilities. Essentially there are some internal tolerances, such as how close two shapes need to be before they are considered to be touching or when two vertices of a hull are so close that they should be considered the same point. For example, internally a value of 5mm (0.005 meters) is used as a value tuned to work well with most situations with game-sized objects described in meters. If you decide to work in a different unit system (such as pixels) then 0.005 pixels is not a good value for this constant and would be too precise, leading to numerical problems, especially far from the origin. Instead you should determine roughly how many pixels you have per meter. For example, say you want 32 pixels per meter then you should set the lengthUnitsPerMeter to be 32.0f. Setting a value of (say) 32.05 would result in the 5mm being scaled up to 0.16 meters, which is a more reasonable value for determining if shapes are touching and hull vertices are too close. A good rule of thumb is to pass the pixel height of your player character to this function, so if your player character is 32 pixels high, then pass 32 to this function. Then you may confidently use pixels for all the length values sent to the physics system. All length values returned from the physics system will also then naturally be in pixels because the physics system does not do any scaling internally, however, you are now responsible for creating appropriate values for gravity, density, and forces. |
| physicsBodyDefinition | Get/Set the PhysicsBodyDefinition. |
| physicsChainDefinition | Get/Set the PhysicsChainDefinition. |
| physicsLayerNames | A set of 64 "layer" names associated with each bit in a PhysicsMask when used for contacts and queries. |
| physicsShapeDefinition | Get/Set the PhysicsShapeDefinition. |
| physicsWorldDefinition | Get/Set the PhysicsWorldDefinition. |
| useFullLayers | Controls if full 64-bit layers are used based upon PhysicsLowLevelSettings2D.physicsLayerNames or if not, the standard 32-bit layers based upon UnityEngine.LayerMask. If a PhysicsLowLevelSettings2D asset is assigned then the full layers (PhysicsLowLevelSettings2D.physicsLayerNames) will be used if PhysicsLowLevelSettings2D.useFullLayers is also active. If no PhysicsLowLevelSettings2D asset is assigned then the global layers (See UnityEngine.LayerMask) will be used. |

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
