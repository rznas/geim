<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Navigation mesh agent.

Attach this component to a mobile character in the game to allow the character to use the NavMesh to navigate the scene. For more details refer to AI Navigation.

### Properties

| Property | Description |
| --- | --- |
| acceleration | The maximum acceleration of an agent as it follows a path, given in units / sec^2. |
| agentTypeID | The type ID for the agent. |
| angularSpeed | Maximum turning speed in (deg/s) while following a path. |
| areaMask | Specifies which NavMesh areas are passable. Changing areaMask will make the path stale (see isPathStale). |
| autoBraking | Should the agent brake automatically to avoid overshooting the destination point? |
| autoRepath | Should the agent attempt to acquire a new path if the existing path becomes invalid? |
| autoTraverseOffMeshLink | Should the agent move across OffMeshLinks automatically? |
| avoidancePriority | The avoidance priority level. |
| baseOffset | The relative vertical displacement of the owning GameObject. |
| currentOffMeshLinkData | The current OffMeshLinkData. |
| desiredVelocity | The desired velocity of the agent including any potential contribution from avoidance. (Read Only) |
| destination | Gets or attempts to set the destination of the agent in world-space units. |
| hasPath | Does the agent currently have a path? (Read Only) |
| height | The height of the agent for purposes of passing under obstacles, etc. |
| isOnNavMesh | Is the agent currently bound to the navmesh? (Read Only) |
| isOnOffMeshLink | Is the agent currently positioned on an OffMeshLink? (Read Only) |
| isPathStale | Is the current path stale. (Read Only) |
| isStopped | Use this property to set, or get, whether the NavMesh agent stops or continues its movement along the current path. |
| navMeshOwner | Returns the owning object of the NavMesh the agent is currently placed on (Read Only). |
| nextOffMeshLinkData | The next OffMeshLinkData on the current path. |
| nextPosition | Gets or sets the simulation position of the navmesh agent. |
| obstacleAvoidanceType | The level of quality of avoidance. |
| path | Property to get and set the current path. |
| pathPending | Is a path in the process of being computed but not yet ready? (Read Only) |
| pathStatus | The status of the current path (complete, partial or invalid). |
| radius | The avoidance radius for the agent. |
| remainingDistance | The distance between the agent's position and the destination on the current path. (Read Only) |
| speed | Maximum movement speed when following a path. |
| steeringTarget | Get the current steering target along the path. (Read Only) |
| stoppingDistance | Stop within this distance from the target position. |
| updatePosition | Gets or sets whether the transform position is synchronized with the simulated agent position. The default value is true. |
| updateRotation | Should the agent update the transform orientation? |
| updateUpAxis | Allows you to specify whether the agent should be aligned to the up-axis of the NavMesh or link that it is placed on. |
| velocity | Access the current velocity of the NavMeshAgent component, or set a velocity to control the agent manually. |

### Public Methods

| Method | Description |
| --- | --- |
| ActivateCurrentOffMeshLink | Enables or disables the current off-mesh link. |
| CalculatePath | Calculate a path to a specified point and store the resulting path. |
| CompleteOffMeshLink | Completes the movement on the current OffMeshLink. |
| FindClosestEdge | Locate the closest NavMesh edge. |
| GetAreaCost | Gets the cost for path calculation when crossing area of a particular type. |
| Move | Apply relative movement to current position. |
| Raycast | Trace a straight path towards a target postion in the NavMesh without moving the agent. |
| ResetPath | Clears the current path. |
| SamplePathPosition | Sample a position along the current path. |
| SetAreaCost | Sets the cost for traversing over areas of the area type. |
| SetDestination | Sets or updates the destination thus triggering the calculation for a new path. |
| SetPath | Assign a new path to this agent. |
| Warp | Warps agent to the provided position. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
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
