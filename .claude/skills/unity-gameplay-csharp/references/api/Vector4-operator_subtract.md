<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_subtract.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subtracts one vector from another.

Subtracts each component of `b` from `a`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints (-5.0,-3.0,-1.0,1.0)
        print(new Vector4(1, 2, 3, 4) - new Vector4(6, 5, 4, 3));
    }
}
```

### Description

Negates a vector.

Each component in the result is negated.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints (-1.0,-2.0,-3.0,-4.0)
        print(-new Vector4(1, 2, 3, 4));
    }
}
```
