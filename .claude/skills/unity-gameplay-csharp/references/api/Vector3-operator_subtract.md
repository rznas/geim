<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_subtract.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subtracts one vector from another.

Subtracts each component of `b` from `a`.

```csharp
// prints (-5.0,-3.0,-1.0)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        print(new Vector3(1, 2, 3) - new Vector3(6, 5, 4));
    }
}
```

### Description

Negates a vector.

Each component in the result is negated.

```csharp
// prints (-1.0f, -2.0f, -3.0f)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        print(-new Vector3(1.0f, 2.0f, 3.0f));
    }
}
```
