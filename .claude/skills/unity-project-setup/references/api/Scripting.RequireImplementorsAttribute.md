<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.RequireImplementorsAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When the interface type is marked, all types implementing that interface will be marked.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        IFoo ifoo = new Foo();
    }
}[RequireImplementors]
interface IFoo {}class Foo : IFoo {}// UnusedFoo is not used, however, it will survive managed code stripping due to IFoo having the [RequireImplementors] attribute.
class UnusedFoo : IFoo
{
    // Note that unused members of UnusedFoo will still be removed by managed code stripping
    public static void UnusedMethod() {}
}// IBar is not used so it will be removed by managed code stripping
[RequireImplementors]
interface IBar {}// Because IBar is not used, the [RequireImplementors] attribute on IBar has no impact.  UnusedBar will also be removed.
class UnusedBar : IBar {}
```
