<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.ComputePenetration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colliderA | The first collider. |
| positionA | Position of the first collider. |
| rotationA | Rotation of the first collider. |
| colliderB | The second collider. |
| positionB | Position of the second collider. |
| rotationB | Rotation of the second collider. |
| direction | Direction along which the translation required to separate the colliders apart is minimal. |
| distance | The distance along direction that is required to separate the colliders apart. |

### Returns

**bool** True, if the colliders overlap at the given poses.

### Description

Compute the minimal translation required to separate the given colliders apart at specified poses.

Translating the first collider by direction * distance will separate the colliders apart if the function returned true. Otherwise, direction and distance are not defined.

One of the colliders has to be BoxCollider, SphereCollider CapsuleCollider or a convex MeshCollider. The other one can be any type.

Note that you aren't restricted to the position and rotation the colliders have at the moment of the call. Passing position or rotation that is different from the currently set one doesn't have an effect of physically moving any colliders thus has no side effects on the Scene.

Doesn't depend on any spatial structures to be updated first, so is not bound to be used only within FixedUpdate timeframe.

Ignores backfaced triangles and doesn't respect Physics.queriesHitBackfaces.

This function is useful to write custom depenetration functions. One particular example is an implementation of a character controller where a specific reaction to collision with the surrounding physics objects is required. In this case, one would first query for the colliders nearby using OverlapSphere and then adjust the character's position using the data returned by ComputePenetration.

```csharp
using UnityEngine;// Visualizes the minimum translation vectors (MTV) required to separate this object from overlapping colliders within a given radius.
// Attach to a GameObject with a Collider component.
// Note: To compute physics penetration both colliders have to be enabled.
[ExecuteInEditMode]
public class ShowPenetration : MonoBehaviour
{
    // Radius in which to search for overlapping colliders
    private float radius = 3f;    // Maximum number of neighbors to check for overlap
    private int maxNeighbours = 16;    private Collider[] neighbours;
    private Collider thisCollider;    private void OnEnable()
    {
        neighbours = new Collider[maxNeighbours];
        thisCollider = GetComponent<Collider>();        if (!thisCollider)
            Debug.LogWarning($"{nameof(ShowPenetration)} requires a Collider component.", this);
    }    private void OnDrawGizmos()
    {
        if (thisCollider == null)
            return;        int count = Physics.OverlapSphereNonAlloc(transform.position, radius, neighbours);        for (int i = 0; i < count; ++i)
        {
            Collider other = neighbours[i];
            if (!other || other == thisCollider)
                continue;            if (Physics.ComputePenetration(
                    thisCollider, transform.position, transform.rotation,
                    other, other.transform.position, other.transform.rotation,
                    out Vector3 direction, out float distance))
            {
                // Draw penetration vector starting from the other collider's position.
                Gizmos.color = Color.red;
                Gizmos.DrawRay(other.transform.position, direction * distance);
            }
        }
    }    private void OnValidate()
    {
        radius = Mathf.Max(0f, radius);
        maxNeighbours = Mathf.Clamp(maxNeighbours, 1, 256);
    }
}
```
