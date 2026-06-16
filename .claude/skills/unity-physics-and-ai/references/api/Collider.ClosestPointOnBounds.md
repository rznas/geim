<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.ClosestPointOnBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The closest point to the bounding box of the attached collider.

This can be used to calculate hit points when applying explosion damage.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float hitPoints = 100.0F;
    public Collider coll;
    void Start()
    {
        coll = GetComponent<Collider>();
    }    void ApplyHitPoints(Vector3 explosionPos, float radius)
    {
        // The distance from the explosion position to the surface of the collider.
        Vector3 closestPoint = coll.ClosestPointOnBounds(explosionPos);
        float distance = Vector3.Distance(closestPoint, explosionPos);        // The damage should decrease with distance from the explosion.
        float damage = 1.0F - Mathf.Clamp01(distance / radius);
        hitPoints -= damage * 10.0F;
    }
}
```
