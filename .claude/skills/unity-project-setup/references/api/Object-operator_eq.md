<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object-operator_eq.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The first Object. |
| y | The Object to compare against the first. |

### Description

Compares two object references to see if they refer to the same object.

When comparing with `null`, Unity's implementation of the equality operator can give different results than `Object.ReferenceEquals` or `==` in standard C#.

In addition to checking if the managed object reference is `null`, the custom `==` operator in `UnityEngine.Object` also checks if the underlying native object pointer is null. If either is true, `== null` evaluates to `true`.

For more information on why and how some managed objects can exist in a so-called detached state without a counterpart native object, refer to Object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Collider target;
    void OnTriggerEnter(Collider trigger)
    {
        if (trigger == target)
        {
            print("We hit the target trigger");
        }
    }
}
```

Return early if there is no target:

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Transform target;
    void Update()
    {
        // Early out if the target is gone
        if (target == null)
        {
            return;
        }
    }
}
```
