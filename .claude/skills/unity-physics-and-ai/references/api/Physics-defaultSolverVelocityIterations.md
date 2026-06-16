<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-defaultSolverVelocityIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The defaultSolverVelocityIterations affects how accurately the Rigidbody joints and collision contacts are resolved. (default 1). Must be positive.

Increasing this value will result in higher accuracy of the resulting exit velocity after a Rigidbody bounce. If you are experiencing issues with jointed Rigidbodies or Ragdolls moving too much after collisions you can try to increase this value.

This value is usually changed in `Edit->Project Settings->Physics` inspector instead of from scripts.

**Note:** Changing the defaultSolverVelocityIterations does not affect already created Rigidbodies. To change an existing Rigidbody please use Rigidbody.solverVelocityIterations.

Additional resources: Physics.defaultSolverIterations.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Physics.defaultSolverVelocityIterations = 10;
    }
}
```
