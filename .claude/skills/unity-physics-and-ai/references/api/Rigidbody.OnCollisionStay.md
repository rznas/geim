<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.OnCollisionStay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody.

In contrast to OnTriggerStay, OnCollisionStay is passed the Collision class and not a Collider. The Collision class contains information about contact points, impact velocity etc. If you don't use collisionInfo in the function, leave out the collisionInfo parameter as this avoids unneccessary calculations. Notes: Collision events are only sent if one of the colliders also has a non-kinematic rigidbody attached. Collision events are sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions. Collision stay events are not sent for sleeping Rigidbodies.

```csharp
// Debug-draw all contact points and normalsusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnCollisionStay(Collision collisionInfo)
    {
        foreach (ContactPoint contact in collisionInfo.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal, Color.white);
        }
    }
}
```
