<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Scale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplies two vectors component-wise.

Every component in the result is a component of `a` multiplied by the same component of `b`.

```csharp
// Calculate the two vectors generating a result.
// This will compute Vector3(2, 6, 12)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        print(Vector3.Scale(new Vector3(1, 2, 3), new Vector3(2, 3, 4)));
    }
}
```

### Description

Multiplies every component of this vector by the same component of `scale`.
