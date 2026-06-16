<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnCollisionEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collision | The Collision data associated with this collision. |

### Description

OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider.

`OnCollisionEnter` receives an instance of the Collision class as the `collision` parameter. This parameter contains information about the collision such as contact points and impact velocity. If you don't use this collision data in your `OnCollisionEnter` callback, leave out the `collision` parameter from the method declaration to avoid unneccessary calculations.

**Note:** Collision events are only sent if one of the colliders also has a non-kinematic rigidbody attached. Collision events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

`OnCollisionEnter` can be a coroutine

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void OnCollisionEnter(Collision collision)
    {
        foreach (ContactPoint contact in collision.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal, Color.white);
        }        if (collision.relativeVelocity.magnitude > 2)
            audioSource.Play();
    }
}
```
