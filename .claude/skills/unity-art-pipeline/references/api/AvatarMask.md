<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AvatarMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AvatarMask is used to mask out humanoid body parts and transforms.

They can be used when importing animation or in an animator controller layer.

### Properties

| Property | Description |
| --- | --- |
| transformCount | Number of transforms. |

### Constructors

| Constructor | Description |
| --- | --- |
| AvatarMask | Creates a new AvatarMask. |

### Public Methods

| Method | Description |
| --- | --- |
| AddTransformPath | Adds a transform path into the AvatarMask. |
| GetHumanoidBodyPartActive | Returns true if the humanoid body part at the given index is active. |
| GetTransformActive | Returns true if the transform at the given index is active. |
| GetTransformPath | Returns the path of the transform at the given index. |
| RemoveTransformPath | Removes a transform path from the AvatarMask. |
| SetHumanoidBodyPartActive | Sets the humanoid body part at the given index to active or not. |
| SetTransformActive | Sets the tranform at the given index to active or not. |
| SetTransformPath | Sets the path of the transform at the given index. |

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

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
