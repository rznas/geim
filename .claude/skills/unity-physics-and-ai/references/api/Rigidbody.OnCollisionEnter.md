<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.OnCollisionEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider.

In contrast to OnTriggerEnter, OnCollisionEnter is passed the Collision class and not a Collider. The Collision class contains information about contact points, impact velocity etc. If you don't use collisionInfo in the function, leave out the collisionInfo parameter as this avoids unneccessary calculations. Notes: Collision events are only sent if one of the colliders also has a non-kinematic rigidbody attached. Collision events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void OnCollisionEnter(Collision collision)
    {
        // Debug-draw all contact points and normals
        foreach (ContactPoint contact in collision.contacts)
        {
            Debug.DrawRay(contact.point, contact.normal, Color.white);
        }        // Play a sound if the colliding objects had a big impact.
        if (collision.relativeVelocity.magnitude > 2)
            audioSource.Play();
    }
}
```

Another example:

```csharp
// A grenade
// instantiates a explosion Prefab when hitting a surface
// then destroys itself
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform explosionPrefab;
    void OnCollisionEnter(Collision collision)
    {
        if (explosionPrefab != null && collision.contactCount > 0)
        {
            ContactPoint contact = collision.GetContact(0); // safer than indexing contacts[0]            // Rotate the object so that the y-axis faces along the normal of the surface
            Quaternion rot = Quaternion.FromToRotation(Vector3.up, contact.normal);
            Vector3 pos = contact.point;
            
            Instantiate(explosionPrefab, pos, rot);
        }        Destroy(gameObject);
    }
}
```
