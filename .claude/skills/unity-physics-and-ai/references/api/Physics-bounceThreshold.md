<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-bounceThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Two colliding objects with a relative velocity below this will not bounce (default 2). Must be positive.

This value is usually changed in `Edit->Project Settings->Physics` inspector instead of from scripts.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Physics.bounceThreshold = 1;
    }
}
```
