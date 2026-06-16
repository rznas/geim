<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-inertiaTensorRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation of the inertia tensor.

If you don't set inertia tensor rotation from a script it will be calculated automatically from all colliders attached to the rigidbody.

```csharp
// Resets the inertia tensor to be the coordinate system of the transformusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void ResetTensor()
    {
        GetComponent<Rigidbody>().inertiaTensorRotation = Quaternion.identity;
    }
}
```
