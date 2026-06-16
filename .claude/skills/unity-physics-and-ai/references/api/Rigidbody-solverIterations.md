<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-solverIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The solverIterations determines how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverIterations. Must be positive.

If you are having trouble with connected Rigidbodies oscillating and behaving erratically setting a higher solver iteration count may improve their stability (but is slower).

Additional resources: Rigidbody.solverVelocityIterations.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.solverIterations = 30;
    }
}
```
