<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.AddExplosionForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| explosionForce | The force of the explosion (which may be modified by distance). |
| explosionPosition | The centre of the sphere within which the explosion has its effect. |
| explosionRadius | The radius of the sphere within which the explosion has its effect. |
| upwardsModifier | Adjustment to the apparent position of the explosion to make it seem to lift objects. |
| mode | The method used to apply the force to its targets. |

### Description

Applies a force to a rigidbody that simulates explosion effects.

The explosion is modelled as a sphere with a certain centre position and radius in world space; normally, anything outside the sphere is not affected by the explosion and the force decreases in proportion to distance from the centre. However, if a value of zero is passed for the radius then the full force will be applied regardless of how far the centre is from the rigidbody.

This function applies a force to the object at the point on the surface of the rigidbody that is closest to `explosionPosition`. The force acts along the direction from `explosionPosition` to the surface point on the rigidbody. If `explosionPosition` is inside the rigidbody, or the rigidbody has no active colliders, then the center of mass is used instead of the closest point on the surface.

The magnitude of the force depends on the distance between `explosionPosition` and the point where the force was applied. As the distance between `explosionPosition` and the force point increases, the actual applied force decreases.

The vertical direction of the force can be modified using `upwardsModifier`. If this parameter is greater than zero, the force is applied at the point on the surface of the Rigidbody that is closest to `explosionPosition` but shifted along the y-axis by negative `upwardsModifier`. Using this parameter, you can make the explosion appear to throw objects up into the air, which can give a more dramatic effect rather than a simple outward force. Force can be applied only to an active rigidbody. If a GameObject is inactive, AddExplosionForce has no effect.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    [Header("Explosion Settings")]
    public float radius = 5.0f;
    public float power = 10.0f;
    public float upwardsModifier = 3.0f;
    public ForceMode forceMode = ForceMode.Force;    [Header("Optional Settings")]
    public LayerMask affectedLayers = ~0; // All layers by default    void Update()
    {
        ApplyExplosionForce();
    }
    
    public void ApplyExplosionForce()
    {
        Vector3 explosionPosition = transform.position;
        Collider[] colliders = Physics.OverlapSphere(explosionPosition, radius, affectedLayers);        foreach (Collider collider in colliders)
        {
            if (collider.TryGetComponent<Rigidbody>(out Rigidbody rb))
            {
                rb.AddExplosionForce(power, explosionPosition, radius, upwardsModifier, forceMode);
            }
        }
    }    void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1f, 0.5f, 0f, 0.5f);
        Gizmos.DrawWireSphere(transform.position, radius);
    }
}
```
