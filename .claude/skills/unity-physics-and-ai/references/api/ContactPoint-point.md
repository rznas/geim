<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPoint-point.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The point of contact.

The point of contact in world space where the collision contact occurred. This represents the point on the surface of the collider where the contact was detected. The value is expressed in world space, meaning it is relative to the global coordinate system of the scene, not the local space of either colliding object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Print how many points are colliding this transform
    // And print the first point that is colliding.
    void OnCollisionEnter(Collision other)
    {
        print("Points colliding: " + other.contacts.Length);
        print("First point that collided: " + other.contacts[0].point);
    }
}
```
