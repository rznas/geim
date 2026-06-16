<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.GetComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** A reference to a component of the specified type, returned as an object of type `T`. If no component is found, returns `null`.

### Description

Retrieves a reference to a component of the specified type, by providing the component type as a type parameter to the generic method.

`GetComponent` returns only the first matching component found on the GameObject, and components aren't checked in a defined order. If there are multiple components of the same type and you need to find a specific one, use GameObject.GetComponents and check the list of components returned to identify the one you want.

**Note**: If the type you request is a derivative of MonoBehaviour and the script it's defined in can't be loaded, then this function returns `null` for that component. This might happen if you've named your class ambiguously. Refer to Naming scripts in the Manual for more information on naming considerations.

The typical usage for this method is to call it on a reference to a different GameObject than the one your script is on. For example:

`ComponentType myComponent = otherGameObject.GetComponent<ComponentType>()`

To find components attached to other GameObjects, you need a reference to that other GameObject, or to any component attached to that GameObject. You can then call `GetComponent` on that reference.

You can also use this method to get a reference to a component on the GameObject that this script is attached to, by calling this method inside a `MonoBehaviour`-derived class attached to the GameObject. You can omit the preceding `GameObject` qualifier to reference the GameObject the script is attached to. In this instance, you're actually calling Component.GetComponent because the script itself is a type of component, but the result is the same as if you'd referenced the GameObject itself. For example:

`ComponentType myComponent = GetComponent<ComponentType>()`

The following example gets a reference to a hinge joint component on the referenced GameObject, and if found, sets a property on it.

```csharp
using UnityEngine;public class GetComponentExample : MonoBehaviour
// Attach this script to a GameObject as a component.
{
// Create a reference to another GameObject in the scene. Set a value for this in the Other Game Object field
// in the Inspector window before entering Play mode. The referenced GameObject must contain a
// HingeJoint component.
    public GameObject otherGameObject;    void Start()
    {
        HingeJoint hinge = otherGameObject.GetComponent<HingeJoint>();
        // Perform null check to confirm a valid HingeJoint component was successfully returned.
        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for, specified as a `Type` object. |

### Returns

**Component** A reference to a component of the specified type, returned as a `Component` type. If no component is found, returns `null`.

### Description

Retrieves a reference to a component of specified type, by providing the component type as a method parameter.

This version of `GetComponent` isn't as efficient as the generic version. Use this version only if necessary.

`GetComponent` returns only the first matching component found on the GameObject, and components aren't checked in a defined order. If there are multiple components of the same type and you need to find a specific one, use GameObject.GetComponents and check the list of components returned to identify the one you want.

**Note**: If the type you request is a derivative of MonoBehaviour and the script it's defined in can't be loaded, then this function returns `null` for that component. This might happen if you've named your class ambiguously. Refer to Naming scripts in the Manual for more information on naming considerations.

The typical usage for this method is to call it on a reference to a different GameObject than the one your script is on. For example:

`ComponentType myComponent = otherGameObject.GetComponent(typeof(ComponentType)) as ComponentType`

To find components attached to other GameObjects, you need a reference to that other GameObject, or to any component attached to that GameObject. You can then call `GetComponent` on that reference.

You can also use this method to get a reference to a component on the GameObject that this script is attached to, by calling this method inside a `MonoBehaviour`-derived class attached to the GameObject. You can omit the preceding `GameObject` qualifier to reference the GameObject the script is attached to. In this instance, you're actually calling Component.GetComponent because the script itself is a type of component, but the result is the same as if you'd referenced the GameObject itself. For example:

`ComponentType myComponent = GetComponent(typeof(ComponentType)) as ComponentType`

The following example gets a reference to a hinge joint component on the referenced GameObject, and if found, sets a property on it.

```csharp
using UnityEngine;public class GetComponentExample : MonoBehaviour
// Attach this script to a GameObject as a component.
{
// Create a reference to another GameObject in the scene. Set a value for this in the Other Game Object field
// in the Inspector window before entering Play mode. The referenced GameObject must contain a
// HingeJoint component.
    public GameObject otherGameObject;    void Start()
    {
    // This version of this method returns a Component, so use the as operator to safely
    // convert it to the derived HingeJoint type
        HingeJoint hinge = otherGameObject.GetComponent(typeof(HingeJoint)) as HingeJoint;
    // Perform null check to confirm that the returned type was successfully converted to HingeJoint.
        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents

### Parameters

| Parameter | Description |
| --- | --- |
| type | The name of the type of component to search for, specified as a string. |

### Returns

**Component** A reference to a component of the specified type, returned as a `Component` type. If no component is found, returns `null`.

### Description

Retrieves a reference to a component of the specified type, by providing the name of the component type as a method parameter.

This version of `GetComponent` isn't as efficient as the generic version. Use this version only if necessary.

`GetComponent` returns only the first matching component found on the GameObject, and components aren't checked in a defined order. If there are multiple components of the same type and you need to find a specific one, use GameObject.GetComponents and check the list of components returned to identify the one you want.

**Note**: If the type you request is a derivative of MonoBehaviour and the script it's defined in can't be loaded then this function returns `null` for that component. This might happen if you've named your class ambiguously. Refer to Naming scripts in the Manual for more information on naming considerations.

The typical usage for this method is to call it on a reference to a different GameObject than the one your script is on. For example:

`ComponentType myComponent = otherGameObject.GetComponent("ComponentType") as ComponentType`

To find components attached to other GameObjects, you need a reference to that other GameObject, or to any component attached to that GameObject. You can then call `GetComponent` on that reference.

You can also use this method to get a reference to a component on the GameObject that this script is attached to, by calling this method inside a `MonoBehaviour`-derived class attached to the GameObject. You can omit the preceding `GameObject` qualifier to reference the GameObject the script is attached to. In this instance, you're actually calling Component.GetComponent because the script itself is a type of component, but the result is the same as if you'd referenced the GameObject itself. For example:

`ComponentType myComponent = GetComponent("ComponentType") as ComponentType`

The following example gets a reference to a hinge joint component on the referenced GameObject, and if found, sets a property on it.

```csharp
using UnityEngine;public class GetComponentNonPerformantExample : MonoBehaviour
// Attach this script to a GameObject as a component.
{
// Create a reference to another GameObject in the scene. Set a value for this in the Other Game Object field
// in the Inspector window before entering Play mode. The referenced GameObject must contain a
// HingeJoint component.
    public GameObject otherGameObject;    void Start()
    {
        // This version of this method returns a Component, so use the as operator to safely
        // convert it to the derived HingeJoint type
        HingeJoint hinge = otherGameObject.GetComponent("HingeJoint") as HingeJoint;
        // Perform null check to confirm a valid HingeJoint component was successfully returned.
        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents
