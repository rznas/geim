<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.RotationConstraint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constrains the rotation of a GameObject based on the rotation of one or more sources.

Use this constraint to rotate a GameObject based on the rotation of other sources. For example, you can use this constraint to synchronize spinning gears in a machine. You can also adjust the weight of each source to influence whether the constrained GameObject follows the rotation of one source over another source.

Refer to Rotation Constraint Component for more details.

Additional resources: ConstraintSource, ParentConstraint, LookAtConstraint.

```csharp
// This example uses a RotationConstraint to constrain the rotation of a GameObject based on two sources.
// Each source has an equal influence based on their assigned weight.

using UnityEngine;
using UnityEngine.Animations;

public class RotationConstraintExample : MonoBehaviour
{
    public Transform sourceA;
    public Transform sourceB;
    private RotationConstraint m_RotationConstraint;

    void Start()
    {
        m_RotationConstraint = gameObject.AddComponent<RotationConstraint>();

        ConstraintSource source1 = new ConstraintSource { sourceTransform = sourceA, weight = 0.5f };
        ConstraintSource source2 = new ConstraintSource { sourceTransform = sourceB, weight = 0.5f };

        m_RotationConstraint.AddSource(source1);
        m_RotationConstraint.AddSource(source2);

        m_RotationConstraint.constraintActive = true;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| constraintActive | Activates or deactivates the constraint. |
| locked | Locks the offset and rotation at rest. |
| rotationAtRest | The rotation used when the sources have a total weight of 0. |
| rotationAxis | The axes affected by the RotationConstraint. |
| rotationOffset | The offset from the constrained rotation. |
| sourceCount | The number of sources set on the component (read-only). |
| weight | The weight of the constraint component. |

### Public Methods

| Method | Description |
| --- | --- |
| AddSource | Adds a constraint source. |
| GetSource | Gets a constraint source by index. |
| GetSources | Gets the list of sources. |
| RemoveSource | Removes a source from the component. |
| SetSource | Sets a source at a specified index. |
| SetSources | Sets the list of sources on the component. |

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
