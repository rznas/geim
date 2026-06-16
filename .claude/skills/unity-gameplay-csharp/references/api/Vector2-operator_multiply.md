<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2-operator_multiply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplies a vector by a number.

Multiplies each component of `a` by a number `d`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // make the vector twice longer: prints (2.0,4.0)
        print(new Vector2(1, 2) * 2.0f);
    }
}
```

### Description

Multiplies a vector by a number.

Multiplies each component of `a` by a number `d`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // make the vector twice longer: prints (2.0,4.0)
        print(2.0f * new Vector2(1, 2));
    }
}
```

### Description

Multiplies a vector by another vector.

Multiplies each component of `a` by its matching component from `b`.
