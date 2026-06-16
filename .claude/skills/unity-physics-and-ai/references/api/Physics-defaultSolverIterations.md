<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-defaultSolverIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The defaultSolverIterations determines how accurately Rigidbody joints and collision contacts are resolved. (default 6). Must be positive.

If you are having trouble with connected Rigidbodies oscillating and behaving erratically setting a higher solver iteration count may improve their stability (but is slower).

This value is usually changed in `Edit->Project Settings->Physics` inspector instead of from scripts.

**Note:** Changing the defaultSolverIterations does not affect already created Rigidbodies. To change an existing Rigidbody please use Rigidbody.solverIterations.

Additional resources: Physics.defaultSolverVelocityIterations.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Physics.defaultSolverIterations = 10;
    }
}
```
