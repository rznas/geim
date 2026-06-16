<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-isKinematic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether physics affects the rigidbody.

If isKinematic is enabled, Forces, collisions or joints will not affect the rigidbody anymore. The rigidbody will be under full control of animation or script control by changing transform.position. Kinematic bodies also affect the motion of other rigidbodies through collisions or joints. Eg. can connect a kinematic rigidbody to a normal rigidbody with a joint and the rigidbody will be constrained with the motion of the kinematic body. Kinematic rigidbodies are also particularly useful for making characters which are normally driven by an animation, but on certain events can be quickly turned into a ragdoll by setting isKinematic to false.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    // Let the rigidbody take control and detect collisions.
    void EnableRagdoll()
    {
        rb.isKinematic = false;
        rb.detectCollisions = true;
    }    // Let animation control the rigidbody and ignore collisions.
    void DisableRagdoll()
    {
        rb.isKinematic = true;
        rb.detectCollisions = false;
    }
}
```
