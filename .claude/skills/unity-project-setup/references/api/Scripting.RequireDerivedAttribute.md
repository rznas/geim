<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.RequireDerivedAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When the type is marked, all types derived from that type will also be marked.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        new Foo();
    }
}[RequireDerived]
class Foo {}// UnusedFoo is not used, however, it will survive managed code stripping due to Foo having the [RequireDerived] attribute.
class UnusedFoo : Foo
{
    // Note that unused members of UnusedFoo will still be removed by managed code stripping
    public static void UnusedMethod() {}
}
// Bar is not used so it will be removed by managed code stripping
[RequireDerived]
class Bar {}// Because Bar is not used, the [RequireDerived] attribute on Bar has no impact.  UnusedBar will also be removed.
class UnusedBar : Bar {}
```
