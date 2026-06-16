<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-solverVelocityIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The solverVelocityIterations affects how how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverVelocityIterations. Must be positive.

Increasing this value will result in higher accuracy of the resulting exit velocity after a Rigidbody bounce. If you are experiencing issues with jointed Rigidbodies or Ragdolls moving too much after collisions you can try to increase this value.

Additional resources: Rigidbody.solverIterations.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.solverVelocityIterations = 30;
    }
}
```
