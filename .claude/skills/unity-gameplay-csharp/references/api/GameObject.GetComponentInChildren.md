<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.GetComponentInChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| includeInactive | Whether to include inactive child GameObjects in the search. |

### Returns

**T** A Component of the matching type `T`, otherwise `null` if no matching Component is found.

### Description

Retrieves a reference to a component of type T on the specified GameObject, or any child of the GameObject.

This method checks the GameObject on which it is called first, then recurses downwards through all child GameObjects using a depth-first search, until it finds a matching Component of the specified type `T`.

Only active child GameObjects are included in the search, unless you call the method with the `includeInactive` parameter set to `true`, in which case inactive child GameObjects are also included. The GameObject on which the method is called is always searched regardless of this parameter.

The typical usage for this method is to call it on a reference to a different GameObject than the one your script is on. For example:

`myResults = otherGameObject.GetComponentInChildren<ComponentType>()`

However, if you're writing code inside a MonoBehaviour class, you can omit the preceding GameObject reference to perform the search on the same GameObject your script is attached to, and its children. In this instance, you're actually calling Component.GetComponentInChildren because the script itself is a type of component, but the result is the same as if you'd referenced the GameObject itself. For example:

`myResults = GetComponentInChildren<ComponentType>()`

`GetComponentInChildren` returns only the first matching component found, and components are not checked in a defined order. If there are multiple components of the specified type and you need to find a specific one, you should use Component.GetComponentsInChildren and check the list of components returned to identify the one you want.

To find components attached to other GameObjects, you need a reference to that other GameObject (or any component attached to that GameObject). You can then call `GetComponentInChildren` on that reference.

**Note**: If the type you request is a derivative of MonoBehaviour and the associated script can't be loaded then this function will return `null` for that component.

The following example gets a reference to a hinge joint component on the referenced GameObject, or any of its children, and if found, sets a property on that hinge joint component.

```csharp
using UnityEngine;public class GetComponentInChildrenExample : MonoBehaviour
{
    // Disable the spring on the first HingeJoint component found on the referenced GameObject or any of its children    public GameObject objectToCheck;    void Start()
    {
        HingeJoint hinge = objectToCheck.GetComponentInChildren<HingeJoint>();        if (hinge != null)
        {
            hinge.useSpring = false;
        }
        else
        {
            // Try again, looking for inactive GameObjects
            HingeJoint hingeInactive = objectToCheck.GetComponentInChildren<HingeJoint>(true);            if (hingeInactive != null)
            {
                hingeInactive.useSpring = false;
            }
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of Component to retrieve. |
| includeInactive | Whether to include inactive child GameObjects in the search. |

### Returns

**Component** A component of the matching type, if found.

### Description

This is the non-generic version of this method.

This version of `GetComponentInChildren` is not as efficient as the Generic version (above), so you should only use it if necessary.

```csharp
using UnityEngine;public class GetComponentInChildrenExample : MonoBehaviour
{
     // Disable the spring on the first HingeJoint component found on the referenced GameObject or any of its children    public GameObject objectToCheck;    void Start()
    {
        HingeJoint hinge = gameObject.GetComponentInChildren(typeof(HingeJoint)) as HingeJoint;        if (hinge != null)
        {
            hinge.useSpring = false;
        }
        else
        {
            // Try again, looking for inactive GameObjects
            HingeJoint hingeInactive = gameObject.GetComponentInChildren(typeof(HingeJoint), true) as HingeJoint;            if (hingeInactive != null)
            {
                hingeInactive.useSpring = false;
            }
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents
