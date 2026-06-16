<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.ScaleConstraint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constrains the scale of a GameObject based on the scale of one or more sources.

Use this constraint to scale a GameObject based on the scale of other sources. For example, use this constraint to scale UI elements based on the scale of a viewport. You can also adjust the weight of each source to influence whether the constrained GameObject follows the scale of one source over another source.

Refer to Scale Constraint Component for more details.

Additional resources: ConstraintSource, RotationConstraint, PositionConstraint.

```csharp
// This example uses a ScaleConstraint to constrain the scale of a GameObject based on two sources.
// The first source has a greater influence than the second source based on their assigned weight.

using UnityEngine;
using UnityEngine.Animations;

public class ScaleConstraintExample : MonoBehaviour
{
    public Transform sourceA;
    public Transform sourceB;
    private ScaleConstraint m_ScaleConstraint;

    void Start()
    {
        m_ScaleConstraint = gameObject.AddComponent<ScaleConstraint>();

        ConstraintSource source1 = new ConstraintSource { sourceTransform = sourceA, weight = 0.7f };
        ConstraintSource source2 = new ConstraintSource { sourceTransform = sourceB, weight = 0.3f };

        m_ScaleConstraint.AddSource(source1);
        m_ScaleConstraint.AddSource(source2);

        m_ScaleConstraint.constraintActive = true;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| constraintActive | Activates or deactivates the constraint. |
| locked | Locks the offset and scale at rest. |
| scaleAtRest | The scale used when the sources have a total weight of 0. |
| scaleOffset | The offset from the constrained scale. |
| scalingAxis | The axes affected by the ScaleConstraint. |
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
