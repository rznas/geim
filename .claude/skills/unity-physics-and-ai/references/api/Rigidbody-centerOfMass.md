<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-centerOfMass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The center of mass relative to the transform's origin.

If you don't set the center of mass from a script it will be calculated automatically from all colliders attached to the rigidbody. After a custom center of mass set, it will no longer be recomputed automatically on modifications such as adding or removing colliders, translating them, scaling etc. To revert back to the automatically computed center of mass, use Rigidbody.ResetCenterOfMass.

Setting the center of mass is often useful when simulating cars to make them more stable. A car with a lower center of mass is less likely to topple over.

Note: `centerOfMass` is relative to the transform's position and rotation, but will not reflect the transform's scale!

```csharp
// Expose center of mass to allow it to be set from
// the inspector.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector3 com;
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.centerOfMass = com;
    }
}
```
