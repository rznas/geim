<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-thisTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Transform of the GameObject that received the Collision event (Read Only).

If a Rigidbody was attached to the Collider that belongs to the GameObject that received the Collision event, the transform is the transform attached to the Rigidbody. If a Rigidbody was not attached to the Collider that belongs to the GameObject that received the collision event, the transform will be the transform attached to the collider.

```csharp
// Attach this script to a GameObject with a Collider and Rigidbody.
// Make sure the object you’re colliding with also has a Collider (and optionally a Rigidbody).using UnityEngine;public class CollisionLogger : MonoBehaviour
{
    private void OnCollisionEnter(Collision collision)
    {
        Transform ourTransform = collision.thisTransform;        // Log the position, rotation, and scale of the hit object
        Debug.Log("Collision Event On: " + ourTransform.name);
        Debug.Log("Position: " + ourTransform.position);
        Debug.Log("Rotation: " + ourTransform.rotation);
        Debug.Log("Scale: " + ourTransform.localScale);
    }
}
```
