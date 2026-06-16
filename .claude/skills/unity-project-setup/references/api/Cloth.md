<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Cloth class provides an interface to cloth simulation physics.

### Properties

| Property | Description |
| --- | --- |
| bendingStiffness | Bending stiffness of the cloth. |
| capsuleColliders | An array of CapsuleColliders which this Cloth instance should collide with. |
| clothSolverFrequency | Number of cloth solver iterations per second. |
| coefficients | The cloth skinning coefficients used to set up how the cloth interacts with the skinned mesh. |
| collisionMassScale | How much to increase mass of colliding particles. |
| damping | Damp cloth motion. |
| enableContinuousCollision | Enable continuous collision to improve collision stability. |
| enabled | Is this cloth enabled? |
| externalAcceleration | A constant, external acceleration applied to the cloth. |
| friction | The friction of the cloth when colliding with the character. |
| normals | The current normals of the cloth object. |
| randomAcceleration | A random, external acceleration applied to the cloth. |
| selfCollisionDistance | Minimum distance at which two cloth particles repel each other (default: 0.0). |
| selfCollisionStiffness | Self-collision stiffness defines how strong the separating impulse should be for colliding particles. |
| sleepThreshold | Cloth's sleep threshold. |
| sphereColliders | An array of ClothSphereColliderPairs which this Cloth instance should collide with. |
| stiffnessFrequency | Sets the stiffness frequency parameter. |
| stretchingStiffness | Stretching stiffness of the cloth. |
| useGravity | Should gravity affect the cloth simulation? |
| useTethers | Use Tether Anchors. |
| useVirtualParticles | Add one virtual particle per triangle to improve collision stability. |
| vertices | The current vertex positions of the cloth object. |
| worldAccelerationScale | How much world-space acceleration of the character will affect cloth vertices. |
| worldVelocityScale | How much world-space movement of the character will affect cloth vertices. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearTransformMotion | Clear the pending transform changes from affecting the cloth simulation. |
| GetSelfAndInterCollisionIndices | Get list of particles to be used for self and inter collision. |
| GetVirtualParticleIndices | Get list of indices to be used when generating virtual particles. |
| GetVirtualParticleWeights | Get weights to be used when generating virtual particles for cloth. |
| SetEnabledFading | Fade the cloth simulation in or out. |
| SetSelfAndInterCollisionIndices | This allows you to set the cloth indices used for self and inter collision. |
| SetVirtualParticleIndices | Set indices to use when generating virtual particles. |
| SetVirtualParticleWeights | Sets weights to be used when generating virtual particles for cloth. |

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
