<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.GetComponentsInChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T[]** An array containing all matching components of type `T`.

### Description

Gets references to all components of type `T` on the same GameObject as the component specified, and any child of the GameObject.

The typical usage for this method is to call it from a MonoBehaviour script (which itself is a type of component), to find references to other Components or MonoBehaviours attached to the same GameObject as that script, or its child GameObjects. In this case you can call the method with no preceding object specified. For example:

`myResults = GetComponentsInChildren<ComponentType>()`

You can also call this method on a reference to different component, which might be attached to a different GameObject. In this case, the GameObject to which that component is attached, and its children, are searched. For example:

`myResults = otherComponent.GetComponentsInChildren<ComponentType>()`

This method checks the GameObject on which it is called first, then recurses downwards through all child GameObjects using a depth-first search, and finds all matching components of the type `T` specified.

To find components attached to other GameObjects, you need a reference to that other GameObject (or any component attached to that GameObject). You can then call `GetComponentsInChildren` on that reference.

The following example gets a reference to all hinge joint components on the same GameObject as the script, or any of its children, and if found, sets a property on those components.

```csharp
using UnityEngine;public class GetComponentsInChildrenExample : MonoBehaviour
{
    public Component[] hingeJoints;    void Start()
    {
        hingeJoints = GetComponentsInChildren<HingeJoint>();        foreach (HingeJoint joint in hingeJoints)
            joint.useSpring = false;
    }
}
```

Note: If the type you request is a derivative of MonoBehaviour and the associated script can't be loaded then this method returns `null` for that component. Additional resources: Component and GameObject class reference pages for the other variations of the `GetComponent` family of methods.

### Parameters

| Parameter | Description |
| --- | --- |
| includeInactive | Whether to include inactive child GameObjects in the search. |

### Returns

**T[]** An array containing all matching components of type `T`.

### Description

Gets references to all components of type `T` on the same GameObject as the component specified, and any child of the GameObject, including those that are inactive.

Checks the GameObject on which it is called first, then recurses downwards through all child GameObjects using a depth-first search, and finds all matching components of the type `T` specified.

Set the `includeInactive` parameter to `true`, to include inactive child GameObjects. The GameObject on which the method is called is always searched regardless of this parameter.

### Parameters

| Parameter | Description |
| --- | --- |
| results | A list to use for the returned results. |

### Description

A variation of the GetComponentsInChildren method which allows you to supply your own List to be filled with results.

This allows you to avoid allocating new List objects for each call to the method. The list you supply is resized to match the number of results found, and any existing values in the list are overwritten.

### Parameters

| Parameter | Description |
| --- | --- |
| includeInactive | Whether to include inactive child GameObjects in the search. |
| results | A list to use for the returned results. |

### Description

A variation of the GetComponentsInChildren method which allows you to supply your own List to be filled with results, and includes inactive child GameObjects.

This allows you to avoid allocating new List objects for each call to the method. The list you supply is resized to match the number of results found, and any existing values in the list are overwritten.

### Parameters

| Parameter | Description |
| --- | --- |
| t | The type of component to search for. |
| includeInactive | Whether to include inactive child GameObjects in the search. |

### Returns

**Component[]** An array of all found components matching the specified type.

### Description

The non-generic version of this method.

This version of GetComponentsInChildren is not as efficient as the Generic version (above), so you should only use it if necessary.
