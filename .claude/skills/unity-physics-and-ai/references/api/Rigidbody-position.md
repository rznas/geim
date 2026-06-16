<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position of the rigidbody.

Rigidbody.position allows you to get and set the position of a Rigidbody using the physics engine. If you change the position of a Rigidbody using Rigidbody.position, the transform will be updated after the next physics simulation step. This is faster than updating the position using Transform.position, as the latter will cause all attached Colliders to recalculate their positions relative to the Rigidbody.

If you want to continuously move a rigidbody use Rigidbody.MovePosition instead, which takes interpolation into account.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GetComponent<Rigidbody>().position = Vector3.zero;
    }
}
```
