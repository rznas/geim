<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.GetComponents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T[]** An array containing all matching components of type `T`.

### Description

Gets references to all components of type `T` on the same GameObject as the component specified.

The typical usage for this method is to call it from a MonoBehaviour script (which itself is a type of component), to find references to other Components or MonoBehaviours attached to the same GameObject as that script. In this case you can call the method with no preceding object specified. For example:

`myResults = GetComponents<ComponentType>()`

You can also call this method on a reference to different component, which might be attached to a different GameObject. In this case, the GameObject to which that component is attached is searched. For example:

`myResults = otherComponent.GetComponents<ComponentType>()`

To find components attached to a particular GameObject, you need a reference to that other GameObject (or any component attached to that GameObject). You can then call `GetComponents` on that reference.

See the Component and GameObject class reference pages for the other variations of the `GetComponent` family of methods.

The following example gets a reference to all hinge joint components on the specified GameObject, and sets a property on each hinge joint component that was found.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        HingeJoint[] hinges = GetComponents<HingeJoint>();
        for (int i = 0; i < hinges.Length; i++)
        {
            hinges[i].useSpring = false;
        }
    }
}
```

Note: If the type you request is a derivative of MonoBehaviour and the associated script can't be loaded then this function will return `null` for that component.

### Parameters

| Parameter | Description |
| --- | --- |
| results | A list to use for the returned results. |

### Description

A variation of the GetComponents method which allows you to supply your own List to be filled with results.

This allows you to avoid allocating new List objects for each call to the method. The list you supply is resized to match the number of results found, and any existing values in the list are overwritten.

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for. |

### Returns

**Component[]** An array containing all matching components of type `type`.

### Description

The non-generic version of this method.

This version of GetComponents is not as efficient as the Generic version (above), so you should only use it if necessary.

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of component to search for. |
| results | A list to use for the returned results. |

### Description

The non-generic version of this method which allows you to supply your own List to be filled with results.

This version of GetComponents is not as efficient as the Generic version (above), so you should only use it if necessary.
