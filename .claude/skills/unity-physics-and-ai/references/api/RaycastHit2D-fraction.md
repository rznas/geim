<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-fraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The fraction of the distance specified to the physics query before it detected a Collider2D.

When a physics query is used, it has a start position and an explicit end position or a direction and distance. The `fraction` is a value in the range of `0` and `1` which is a representation of the returned RaycastHit2D.distance result (see code example).

If the physics query does not allow specifying an explicit end position or it has a default distance of `infinity` then the `fraction` is identical to the returned RaycastHit2D.distance and therefore will not be in the range of `0` and `1`.

Additional resources: RaycastHit2D.distance.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the specified direction up to 10 world units away.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction, 10f);        // If we hit something then indicate if it was less-than or greater-than halfway of the physics query.
        if (hit)
        {
            if (hit.fraction < 0.5f)
                Debug.Log("Hit something before halfway!");
            else
               Debug.Log("Hit something after halfway!");
        }
    }
}
```
