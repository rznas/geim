<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshObstacle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An obstacle for NavMeshAgents to avoid.

A NavMeshObstacle is cylindrical in shape and can move around the surface of the NavMesh with a specified velocity. By default, the obstacle will only affect the agent's *avoidance* behaviour rather than the pathfinding. This means that the agent will ignore the obstacle when plotting a path but will sidestep around it while moving along the path. If *carving* is enabled, the obstacle will create a temporary "hole" in the NavMesh. The hole will be recognised by the pathfinding, so paths will be plotted to avoid the obstacle. This means that if, say, an obstacle blocks a narrow gap, the pathfinding will seek an alternative route to the target. Without carving, the agent will head for the gap but won't be able to pass until the obstacle is clear.

Additional resources: NavMeshAgent.

### Properties

| Property | Description |
| --- | --- |
| carveOnlyStationary | Should this obstacle be carved when it is constantly moving? |
| carving | Should this obstacle make a cut-out in the navmesh. |
| carvingMoveThreshold | Threshold distance for updating a moving carved hole (when carving is enabled). |
| carvingTimeToStationary | Time to wait until obstacle is treated as stationary (when carving and carveOnlyStationary are enabled). |
| center | The center of the obstacle, measured in the object's local space. |
| height | Height of the obstacle's cylinder shape. |
| radius | Radius of the obstacle's capsule shape. |
| shape | The shape of the obstacle. |
| size | The size of the obstacle, measured in the object's local space. |
| velocity | Velocity at which the obstacle moves around the NavMesh. |

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
