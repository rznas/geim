<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-attachedRigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody2D attached to the Joint2D.

Joint2D are automatically attached to a Rigidbody2D on the same GameObject as the Joint2D.

Additional resources: Rigidbody2D.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector2 force = Vector2.up;    void Start()
    {
        // Apply a force to the rigidbody attached to the joint.
        GetComponent<Joint2D>().attachedRigidbody.AddForce(force);
    }
}
```
