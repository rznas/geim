<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPoint-normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normal of the contact point.

The following example will draw a line to represent every normal from a collision. Each line will be drawn in the Scene view.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnCollisionEnter(Collision other)
    {
        // Print how many points are colliding with this transform
        Debug.Log("Points colliding: " + other.contacts.Length);        // Print the normal of the first point in the collision.
        Debug.Log("Normal of the first point: " + other.contacts[0].normal);        // Draw a different colored ray for every normal in the collision
        foreach (var item in other.contacts)
        {
            Debug.DrawRay(item.point, item.normal * 100, Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f), 10f);
        }
    }
}
```
