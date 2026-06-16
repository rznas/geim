<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.GetComponents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T[]** An array containing all matching components of type `T`.

### Description

Retrieves references to all components of type T on the specified GameObject.

The typical usage for this method is to call it on a reference to a different GameObject than the one your script is on. For example:

`myResults = otherGameObject.GetComponents<ComponentType>()`

However, if you're writing code inside a MonoBehaviour class, you can omit the preceding GameObject reference to perform the search on the same GameObject your script is attached to. In this instance, you're actually calling Component.GetComponents because the script itself is a type of component, but the result is the same as if you'd referenced the GameObject itself. For example:

`myResults = GetComponents<ComponentType>()`

To find components attached to a particular GameObject, you need a reference to that other GameObject (or any component attached to that GameObject). You can then call `GetComponents` on that reference.

**Note**: If the type you request is a derivative of MonoBehaviour and the associated script can't be loaded then this function will return `null` for that component.

The following example gets a reference to all hinge joint components on the specified GameObject, and sets a property on each hinge joint component that was found.

```csharp
using UnityEngine;public class GetComponentsExample : MonoBehaviour
{
    // Disable the spring on all HingeJoints in the referenced GameObject    public GameObject objectToCheck;    void Start()
    {
        HingeJoint[] hingeJoints;        hingeJoints = objectToCheck.GetComponents<HingeJoint>();        foreach (HingeJoint joint in hingeJoints)
        {
            joint.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponentsInChildren

### Parameters

| Parameter | Description |
| --- | --- |
| results | A list to use for the returned results. |

### Description

A variation of the GetComponents method which allows you to supply your own List to be filled with results.

This allows you to avoid allocating new List objects for each call to the method. The list you supply is resized to match the number of results found, and any existing values in the list are overritten.

```csharp
using UnityEngine;
using System.Collections.Generic;public class GetComponentsExample : MonoBehaviour
{
    // Disable the spring on all HingeJoints in the referenced GameObject    public GameObject objectToCheck;    void Start()
    {
        List<HingeJoint> hingeJoints = new List<HingeJoint>();        objectToCheck.GetComponents(hingeJoints);        foreach (HingeJoint joint in hingeJoints)
        {
            joint.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponentsInChildren

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for. |

### Returns

**Component[]** An array containing all matching components of type `type`.

### Description

The non-generic version of this method.

This version of `GetComponents` is not as efficient as the Generic version (above), so you should only use it if necessary.

```csharp
using UnityEngine;public class GetComponentsExample : MonoBehaviour
{
    // Disable the spring on all HingeJoints in the referenced GameObject    public GameObject objectToCheck;    void Start()
    {
        Component[] hingeJoints;        hingeJoints = objectToCheck.GetComponents(typeof(HingeJoint));        foreach (HingeJoint joint in hingeJoints)
        {
            joint.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponentsInChildren

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for. |
| results | A list to use for the returned results. |

### Description

The non-generic version of this method which allows you to supply your own List to be filled with results.

With this version of the `GetComponents` method, `results` is of type `Component`, not the type of the component retrieved.

If the type you request is a derivative of MonoBehaviour and the **associated script can not be loaded** then this function will return `null` for that component.

```csharp
using UnityEngine;
using System.Collections.Generic;public class GetComponentsExample : MonoBehaviour
{
   // Disable the spring on all HingeJoints in the referenced GameObject    public GameObject objectToCheck;
    void Start()
    {
        List<Component> hingeJoints = new List<Component>();        objectToCheck.GetComponents(typeof(HingeJoint), hingeJoints);        foreach (HingeJoint joint in hingeJoints)
        {
            joint.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponentsInChildren
