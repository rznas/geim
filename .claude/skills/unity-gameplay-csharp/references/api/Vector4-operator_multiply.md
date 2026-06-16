<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_multiply.html
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
        // make the vector twice longer: prints (2.0,4.0,6.0,8.0)
        print(new Vector4(1, 2, 3, 4) * 2.0f);
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
        // make the vector twice longer: prints (2.0,4.0,6.0,8.0)
        print(2.0f * new Vector4(1, 2, 3, 4));
    }
}
```
