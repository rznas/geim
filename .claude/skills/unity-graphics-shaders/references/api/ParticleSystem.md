<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the Built-in Particle System. Unity's powerful and versatile particle system implementation.

**General parameters** 
 
The Particle System's general parameters are kept inside a special Main module. These parameters are visible in the Inspector above all the other modules.

In script, these parameters are accessible through ParticleSystem.main.

**Accessing module properties**

Particle System properties are grouped by the module they belong to, such as ParticleSystem.noise and ParticleSystem.emission. These properties are structs, but do not behave like normal C# structs. They are simply interfaces directly into the native code, so it is important to know how to use them, compared to a normal C# struct.

The key difference is that it is not necessary to assign the struct back to the Particle System component. When you set any property on a module struct, Unity immediately assigns that value to the Particle System.

Also, because each module is a struct, you must cache it in a local variable before you can assign any new values to the module. For example, instead of:
 `ParticleSystem.emission.enabled = true; // Doesn't compile`
 write:
 `var emission = ParticleSystem.emission; // Stores the module in a local variable`
 `emission.enabled = true; // Applies the new value directly to the Particle System`


**Module effect multipliers**

Every module has special multiplier properties that allow you to change the overall effect of a curve without having to edit the curve itself. These multiplier properties are all named after the curve they affect - for instance ParticleSystem.emission.rateMultiplier controls the overall effect of ParticleSystem.emission.rate in a given system.

**Constant value shorthand**

Parameters support a shorthand notation for simple constant values. To set a constant value for a parameter, all you need to do is assign a number to it. It is not necessary to create a MinMaxCurve or MinMaxGradient object in the ParticleSystemCurveMode.Constant mode.

For example, instead of:
 `var emission = ParticleSystem.emission;`
 `emission.rate = new ParticleSystem.MinMaxCurve(5.0f);`
 write:
 `var emission = ParticleSystem.emission;`
 `emission.rate = 5.0f;`

**Performance note**: When setting properties on particle modules, the settings are passed immediately into native code. This gives the best performance. This means that setting properties on a module struct doesn't set something in script that requires setting back to the Particle System; it all happens automatically.

Additional resources: Particle.

### Properties

| Property | Description |
| --- | --- |
| collision | Script interface for the CollisionModule of a Particle System. |
| colorBySpeed | Script interface for the ColorByLifetimeModule of a Particle System. |
| colorOverLifetime | Script interface for the ColorOverLifetimeModule of a Particle System. |
| customData | Script interface for the CustomDataModule of a Particle System. |
| emission | Script interface for the EmissionModule of a Particle System. |
| externalForces | Script interface for the ExternalForcesModule of a Particle System. |
| forceOverLifetime | Script interface for the ForceOverLifetimeModule of a Particle System. |
| has3DParticleRotations | Determines whether the Particle System rotates its particles around only the Z axis, or whether the system specifies separate values for the X, Y and Z axes. |
| hasNonUniformParticleSizes | Determines whether the Particle System uses a single value for the width and height (and depth, when using meshes), or if the system specifies different values for each axis. |
| inheritVelocity | Script interface for the InheritVelocityModule of a Particle System. |
| isEmitting | Determines whether the Particle System is emitting particles. A Particle System may stop emitting when its emission module has finished, it has been paused or if the system has been stopped using Stop with the StopEmitting flag. Resume emitting by calling Play. |
| isPaused | Determines whether the Particle System is paused. |
| isPlaying | Determines whether the Particle System is playing. |
| isStopped | Determines whether the Particle System is in the stopped state. |
| lifetimeByEmitterSpeed | Script interface for the Particle System Lifetime By Emitter Speed module. |
| lights | Script interface for the LightsModule of a Particle System. |
| limitVelocityOverLifetime | Script interface for the LimitVelocityOverLifetimeModule of a Particle System. . |
| main | Access the main Particle System settings. |
| noise | Script interface for the NoiseModule of a Particle System. |
| particleCount | The current number of particles (Read Only). The number doesn't include particles of child Particle Systems |
| proceduralSimulationSupported | Determines whether this system supports Procedural Simulation. |
| randomSeed | Override the random seed used for the Particle System emission. |
| rotationBySpeed | Script interface for the RotationBySpeedModule of a Particle System. |
| rotationOverLifetime | Script interface for the RotationOverLifetimeModule of a Particle System. |
| shape | Script interface for the ShapeModule of a Particle System. |
| sizeBySpeed | Script interface for the SizeBySpeedModule of a Particle System. |
| sizeOverLifetime | Script interface for the SizeOverLifetimeModule of a Particle System. |
| subEmitters | Script interface for the SubEmittersModule of a Particle System. |
| textureSheetAnimation | Script interface for the TextureSheetAnimationModule of a Particle System. |
| time | Playback position in seconds. |
| totalTime | Total playback time in seconds, including the Start Delay setting. |
| trails | Script interface for the TrailsModule of a Particle System. |
| trigger | Script interface for the TriggerModule of a Particle System. |
| useAutoRandomSeed | Controls whether the Particle System uses an automatically-generated random number to seed the random number generator. |
| velocityOverLifetime | Script interface for the VelocityOverLifetimeModule of a Particle System. |

### Public Methods

| Method | Description |
| --- | --- |
| AllocateAxisOfRotationAttribute | Ensures that the axisOfRotations particle attribute array is allocated. |
| AllocateCustomDataAttribute | Ensures that the customData1 and customData2 particle attribute arrays are allocated. |
| AllocateMeshIndexAttribute | Ensures that the meshIndices particle attribute array is allocated. |
| Clear | Remove all particles in the Particle System. |
| Emit | Emit count particles immediately. |
| GetCustomParticleData | Get a stream of custom per-particle data. |
| GetParticles | Gets the particles of this Particle System. |
| GetPlaybackState | Returns all the data that relates to the current internal state of the Particle System. |
| GetTrails | Returns all the data relating to the current internal state of the Particle System Trails. |
| IsAlive | Does the Particle System contain any live particles, or will it produce more? |
| Pause | Pauses the system so no new particles are emitted and the existing particles are not updated. |
| Play | Starts the Particle System and resets its playback time to 0. |
| SetCustomParticleData | Set a stream of custom per-particle data. |
| SetParticles | Sets the particles of this Particle System. |
| SetParticlesAndTrails | Sets the particles and the trails of this Particle System. |
| SetPlaybackState | Use this method with the results of an earlier call to ParticleSystem.GetPlaybackState, in order to restore the Particle System to the state stored in the playbackState object. |
| Simulate | Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it. |
| Stop | Stops playing the Particle System using the supplied stop behaviour. |
| TriggerSubEmitter | Triggers the specified sub emitter on all particles of the Particle System. |

### Static Methods

| Method | Description |
| --- | --- |
| ResetPreMappedBufferMemory | Reset the cache of reserved graphics memory used for efficient rendering of Particle Systems. |
| SetMaximumPreMappedBufferCounts | Limits the amount of graphics memory Unity reserves for efficient rendering of Particle Systems. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
