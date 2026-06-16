<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-rotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation of the Rigidbody.

Use Rigidbody.rotation to get and set the rotation of a Rigidbody using the physics engine.

Changing the rotation of a Rigidbody using Rigidbody.rotation updates the Transform after the next physics simulation step. This is faster than updating the rotation using Transform.rotation, as Transform.rotation causes all attached Colliders to recalculate their rotation relative to the Rigidbody, whereas Rigidbody.rotation sets the values directly to the physics system.

If you want to continuously rotate a rigidbody use MoveRotation instead, which takes interpolation into account.

**Note:** rotation is world-space.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Set a custom rotation: 45 degrees around the Y-axis
        GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 45, 0);
    }
}
```
