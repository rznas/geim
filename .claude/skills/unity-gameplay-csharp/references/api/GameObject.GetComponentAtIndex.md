<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.GetComponentAtIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index position in the array of components at which to find the requested object. |

### Returns

**Component** A reference to a component at the specified index. If no component is found at the specified index, returns `null`.

### Description

Retrieves a reference to a component at a specified index of the GameObject's array of components.

Using `GetComponentAtIndex` is a stable way to access components on a GameObject because the index of a component stays the same unless components are added or removed.

An example use case for this is during UI development. This method throws an exception if the index is out of bounds. Refer to GameObject.GetComponentCount for more information.

```csharp
using UnityEngine;public class GetComponentAtIndexExample : MonoBehaviour
{
    public GameObject otherGameObject;    void Start()
    {
        HingeJoint hinge = otherGameObject.GetComponentAtIndex(5) as HingeJoint;        if (hinge != null)
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
| index | The index position in the array of components at which to find the requested object. |

### Returns

**T** A reference to a component of type `T` at the specified index. If no component is found at the specified index, returns `null`.

### Description

Retrieves a reference to a component of type T at a specific index on the specified GameObject.

Using `GetComponentAtIndex` is a stable way to access components on a GameObject because the index of a component stays the same unless components are added or removed.

An example use case for this is during UI development. This method throws an exception if the index is out of bounds.

Additional resources: GameObject.GetComponentCount

```csharp
using UnityEngine;public class GetTComponentAtIndexExample : MonoBehaviour
{
    public GameObject otherGameObject;    void Start()
    {
        HingeJoint hinge = otherGameObject.GetComponentAtIndex<HingeJoint>(5);        if (hinge != null)
        {
            hinge.useSpring = false;
        }
    }
}
```

Additional resources: Component, GameObject.GetComponents
