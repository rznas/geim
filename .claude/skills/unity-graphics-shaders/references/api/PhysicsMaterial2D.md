<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsMaterial2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Asset type that defines the surface properties of a Collider2D.

When two Colllider2D come into contact, the physics system uses both friction and bounciness if it needs to calculate a collision response.

### Properties

| Property | Description |
| --- | --- |
| bounceCombine | Determines how the effective bounciness is calculated when two Collider2D come into contact. |
| bounciness | Coefficient of restitution. |
| friction | Coefficient of friction. |
| frictionCombine | Determines how the effective friction is calculated when two Collider2D come into contact. |

### Static Methods

| Method | Description |
| --- | --- |
| GetCombinedValues | Calculates the effective value used when two Collider2D come into contact with their own PhysicsMaterial2D. |

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
