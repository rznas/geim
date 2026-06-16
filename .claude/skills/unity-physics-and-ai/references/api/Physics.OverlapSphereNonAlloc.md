<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.OverlapSphereNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Center of the sphere. |
| radius | Radius of the sphere. |
| results | The buffer to store the results into. |
| layerMask | A Layer mask defines which layers of colliders to include in the query. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** Returns the amount of colliders stored into the `results` buffer.

### Description

Computes and stores colliders touching or inside the sphere into the provided buffer.

Does not attempt to grow the buffer if it runs out of space. The length of the buffer is returned when the buffer is full. Like Physics.OverlapSphere, but generates no garbage. Additional resources: Physics.AllLayers.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // Declare hitColliders as a reusable field.
    private Collider[] hitColliders;    // Set the maximum number of colliders that can be detected at once.
    private const int maxColliders = 10;    void Awake()
    {
        // Initialize the array just once.
        hitColliders = new Collider[maxColliders];
    }    void ExplosionDamage(Vector3 center, float radius)
    {
        // Reuse the pre-allocated array for Physics.OverlapSphereNonAlloc.
        int numColliders = Physics.OverlapSphereNonAlloc(center, radius, hitColliders);        // Iterate through detected colliders and send the AddDamage message.
        for (int i = 0; i < numColliders; i++)
        {
            hitColliders[i].SendMessage("AddDamage");
        }
    }
}
```

Additional resources: Ray cast with layers section of Use of layers in Unity.
