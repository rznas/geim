<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.IntersectRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does `ray` intersect this bounding box?

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Function to detect if a ray (representing a beam weapon, say)
    // makes contact with the collider's bounds.    Collider myCollider;    void Start()
    {
        // Store a reference to the collider once at startup.
        myCollider = GetComponent<Collider>();
    }    bool DetectHit(Ray ray)
    {
        return myCollider.bounds.IntersectRay(ray);
    }
}
```

### Description

Does `ray` intersect this bounding box?

When the function returns true, the distance to the ray's origin will be returned in the `distance` parameter.
