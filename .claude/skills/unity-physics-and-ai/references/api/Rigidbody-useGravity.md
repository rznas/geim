<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-useGravity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether gravity affects this rigidbody.

If set to false the rigidbody will behave as in outer space.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Collider coll;    void Start()
    {
        coll = GetComponent<Collider>();
        coll.isTrigger = true;
    }    // Disables gravity on all rigidbodies entering this collider.
    void OnTriggerEnter(Collider other)
    {
        if (other.attachedRigidbody)
            other.attachedRigidbody.useGravity = false;
    }
}
```
