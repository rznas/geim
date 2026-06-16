<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-transform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Transform of the object we hit (Read Only).

If we collided against a collider with a Rigidbody, the transform will be the transform attached to the rigidbody. If we collided against a collider without a rigidbody, the transform will be the transform attached to the collider.

```csharp
// Attach this script to a GameObject with a Collider and Rigidbody.
// Make sure the object you’re colliding with also has a Collider (and optionally a Rigidbody).using UnityEngine;public class CollisionLogger : MonoBehaviour
{
    private void OnCollisionEnter(Collision collision)
    {
        // Get the transform of the object we collided with
        Transform hitTransform = collision.transform;        // Log the position, rotation, and scale of the hit object
        Debug.Log("Collided with: " + hitTransform.name);
        Debug.Log("Position: " + hitTransform.position);
        Debug.Log("Rotation: " + hitTransform.rotation);
        Debug.Log("Scale: " + hitTransform.localScale);
    }
}
```
