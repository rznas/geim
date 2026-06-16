<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.GetComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** A reference to a component of the type `T` if one is found, otherwise `null`.

### Description

Gets a reference to a component of type `T` on the same GameObject as the component specified.

The typical usage for this method is to call it from a MonoBehaviour script (which itself is a type of component), to find references to other Components or MonoBehaviours attached to the same GameObject as that script. In this case you can call the method with no preceding object specified. For example:

`myResults = GetComponent<ComponentType>()`

You can also call this method on a reference to different component, which might be attached to a different GameObject. In this case, the GameObject to which that component is attached is searched. For example:

`myResults = otherComponent.GetComponent<ComponentType>()`

Note: GetComponent returns only the first matching component found on the GameObject on which it is called, and the order that the components are checked is not defined. Therefore, if there are more than one of the specified type that could match, and you need to find a specific one, you should use Component.GetComponents and check the list of components returned to identify the one you want.

To find components attached to other GameObjects, you need a reference to that other GameObject (or any component attached to that GameObject). You can then call `GetComponent` on that reference.

See the Component and GameObject class reference pages for the other variations of the `GetComponent` family of methods.

The following example gets a reference to a hinge joint component on the same GameObject as the script, and if found, sets a property on that hinge joint component.

```csharp
using UnityEngine;public class GetComponentExample : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = GetComponent<HingeJoint>();        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

Note: If the type you request is a derivative of MonoBehaviour and the associated script can't be loaded then this function will return `null` for that component.

### Parameters

| Parameter | Description |
| --- | --- |
| type | The `type` of Component to retrieve. |

### Returns

**Component** A Component of the matching `type`, otherwise `null` if no Component is found.

### Description

The non-generic version of this method.

This version of GetComponent is not as efficient as the Generic version (above), so you should only use it if necessary.

```csharp
using UnityEngine;public class GetComponentExample : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = gameObject.GetComponent(typeof(HingeJoint)) as HingeJoint;        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| type | The name of the `type` of Component to get. |

### Returns

**Component** A Component of the matching `type`, otherwise `null` if no Component is found.

### Description

The string-based version of this method.

This version of GetComponent is not as efficient as the Generic version (above), so you should only use it if necessary.

```csharp
using UnityEngine;public class GetComponentExample : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = GetComponent("HingeJoint") as HingeJoint;        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```
