<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The normal of the surface we collided with in world space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // print the impact point's normal
        Debug.Log("Normal vector we collided at: " + hit.normal);
    }
}
```

**Note:** When the CharacterController is colliding with an edge or a corner rather than a flat surface, the reported normal may be different when colliding with BoxColliders than when colliding with MeshColliders. This is due to a limitation in how PhysX handles Capsule/BoxCollider collisions.
