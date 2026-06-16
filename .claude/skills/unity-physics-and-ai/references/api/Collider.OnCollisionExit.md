<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.OnCollisionExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The Collision data associated with this collision event. |

### Description

OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider.

In contrast to OnTriggerExit, OnCollisionExit is passed the Collision class and not a Collider. The Collision class contains information about contact points, impact velocity etc. If you don't use collisionInfo in the function, leave out the collisionInfo parameter as this avoids unneccessary calculations. Notes: Collision events are only sent if one of the colliders also has a non-kinematic rigidbody attached. Collision events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnCollisionExit(Collision collisionInfo)
    {
        print("No longer in contact with " + collisionInfo.transform.name);
    }
}
```
