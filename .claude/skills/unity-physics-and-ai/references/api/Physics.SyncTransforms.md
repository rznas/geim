<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.SyncTransforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Apply Transform changes to the physics engine.

When a Transform component changes, any Rigidbody or Collider on that Transform or its children may need to be repositioned, rotated or scaled depending on the change to the Transform. Use this function to flush those changes to the physics engine manually.

 Appropriate usage scenarios: * Don’t use it in FixedUpdate() — Unity already syncs transforms automatically before each physics step. * Do use it after Transform changes in Update()/LateUpdate() if you’re immediately performing a physics query. * Don’t overuse it — it’s expensive if called every frame unnecessarily.

```csharp
using UnityEngine;public class SyncTransformExample : MonoBehaviour
{
    public Transform target;    void Update()
    {
        // 1. Move a target object by setting its transform.position directly.
        target.position = new Vector3(5, 0, 0);        // 2. Immediately tell Unity's physics engine to update its internal representation
        //    of all transforms (including the one just moved).
        Physics.SyncTransforms();        // 3. Run a physics query — in this case, check if a sphere with radius 0.5
        //    centered at the new target position overlaps any colliders.
        if (Physics.CheckSphere(target.position, 0.5f))
        {
            Debug.Log("Something is overlapping the moved object!");
        }
    }
}
```
