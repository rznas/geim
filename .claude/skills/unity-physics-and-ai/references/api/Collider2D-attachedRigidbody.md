<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-attachedRigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody2D attached to the Collider2D.

Collider2D are automatically attached to a Rigidbody2D on the same GameObject as the Collider2D or if none is present then on a Rigidbody2D on the nearest parent GameObject. The property will be null if no Rigidbody2D is attached. In this case, the Collider2D is attached to a hidden body known as the ground body that lives at the world origin as is set to be RigidbodyType2D.Static. No reference to this hidden body is available however.

Additional resources: Rigidbody2D, RigidbodyType2D.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector2 force = Vector2.up;    void Start()
    {
        // Apply a force to the rigidbody attached to the collider.
        GetComponent<Collider2D>().attachedRigidbody.AddForce(force);
    }
}
```
