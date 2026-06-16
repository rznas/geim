<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.IgnoreCollision.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The first Collider to compare to `collider2`. |
| collider2 | The second Collider to compare to `collider1`. |
| ignore | Whether collisions/triggers between `collider1` and `collider2` should be ignored or not. |

### Description

Makes the collision detection system ignore all collisions/triggers between `collider1` and `collider2`.

Ignoring collisions refers to any type of interaction between the selected Colliders i.e. no collision or trigger interaction will occur. Collision layers are first checked to see the two layers can interact and if not then no interactions take place. Following that, ignoring specific Colliders interactions will occur.

IgnoreCollision has a few limitations: 1) It is not persistent. This means that the ignore collision state will not be stored in the editor when saving a Scene. 2) You can only apply the ignore collision to Colliders in active game objects. When deactivating the Collider the IgnoreCollision state will be lost and you have to call Physics2D.IgnoreCollision again. Additional resources: Physics2D.GetIgnoreCollision, Physics2D.IgnoreLayerCollision.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Instantiate a bullet and make it ignore collisions with this object.    Transform bulletPrefab;    void Start()
    {
        var bullet = Instantiate(bulletPrefab) as Transform;
        Physics2D.IgnoreCollision(bullet.GetComponent<Collider2D>(), GetComponent<Collider2D>());
    }
}
```
