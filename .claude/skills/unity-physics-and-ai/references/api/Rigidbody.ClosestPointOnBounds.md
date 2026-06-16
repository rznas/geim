<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.ClosestPointOnBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The closest point to the bounding box of the attached colliders.

```csharp
// Subtract damage from a character's hit points when an
// explosion occurs.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float hitPoints = 10.0F;
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void ApplyDamage(Vector3 explosionPos, float radius)
    {
        Vector3 closestPoint = rb.ClosestPointOnBounds(explosionPos);
        float distance = Vector3.Distance(closestPoint, explosionPos);
        float damage = 1.0F - Mathf.Clamp01(distance / radius);
        damage *= 10;
        hitPoints -= damage;
    }
}
```
