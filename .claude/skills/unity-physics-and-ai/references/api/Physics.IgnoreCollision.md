<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.IgnoreCollision.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | Any collider. |
| collider2 | Another collider you want to have `collider1` to start or stop ignoring collisions with. |
| ignore | Whether or not the collisions between the two colliders should be ignored or not. |

### Description

Makes the collision detection system ignore all collisions between `collider1` and `collider2`.

This is useful, say, for preventing projectiles from colliding with the object that fires them.

Note that IgnoreCollision is not persistent. This means ignore collision state will not be stored in the editor when saving a scene.

If `ignore` is false, collisions can occur. Set `ignore` to true to ignore collisions.

Additional resources: Physics.IgnoreLayerCollision.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform bulletPrefab;    void Start()
    {
        Transform bullet = Instantiate(bulletPrefab) as Transform;
        Physics.IgnoreCollision(bullet.GetComponent<Collider>(), GetComponent<Collider>());
    }
}
```
