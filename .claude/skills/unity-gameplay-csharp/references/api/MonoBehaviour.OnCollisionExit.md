<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnCollisionExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collision | The Collision data associated with this collision. |

### Description

OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider.

`OnCollisionExit` receives an instance of the Collision class as the `collision` paramter. This parameter contains information about the collision such as contact points and impact velocity. If you don't use this collision data in your `OnCollisionExit` callback, leave out the `collision` parameter from the method declaration to avoid unneccessary calculations.

**Note:** Collision events are only sent if one of the colliders also has a non-kinematic rigidbody attached. Collision events are sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

If one of the objects involved in the collision is destroyed before they separate, `OnCollisionExit` is not called. If your logic depends on `OnCollisionExit` being called whenever contact ends, including when an object is destroyed, you need to implement additional logic, such as handling cleanup in MonoBehaviour.OnDestroy or tracking destroyed objects manually.

`OnCollisionExit` can be a coroutine.

```csharp
using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    void OnCollisionExit(Collision other)
    {
        print("No longer in contact with " + other.transform.name);
    }
}
```
