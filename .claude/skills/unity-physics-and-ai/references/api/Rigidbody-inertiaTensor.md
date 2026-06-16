<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-inertiaTensor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The inertia tensor of this body, defined as a diagonal matrix in a reference frame positioned at this body's center of mass and rotated by Rigidbody.inertiaTensorRotation.

Inertia tensor is a rotational analog of mass: the larger the inertia component about a particular axis is, the more torque that is required to achieve the same angular acceleration about that axis.

Zero is not a valid inertia tensor component. Therefore, the physics system interprets zeros as infinite values instead. So, for example, a body with (0, 1, 1) inertia tensor is impossible to rotate around X.

Note that the rotational Constraints RigidbodyConstraints of Rigidbody are actually implemented by setting the inertia tensor components about the locked degrees of freedom to zero.

If you don't set the inertia tensor from a script, it is calculated automatically from all colliders attached to the Rigidbody. To reset the inertia tensor to the automatically computed value, call Rigidbody.ResetInertiaTensor.

```csharp
// Expose tensor of inertia to allow adjustment from
// the inspector.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector3 tensor;
    public Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.inertiaTensor = tensor;
    }
}
```
