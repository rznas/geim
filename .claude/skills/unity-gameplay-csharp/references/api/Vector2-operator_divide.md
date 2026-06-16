<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2-operator_divide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Divides a vector by a number.

Divides each component of `a` by a number `d`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // make the vector twice shorter: prints (0.5,1.0)
        print(new Vector2(1, 2) / 2.0f);
    }
}
```

### Description

Divides a vector by another vector.

Divides each component of `a` by its matching component from `b`.
