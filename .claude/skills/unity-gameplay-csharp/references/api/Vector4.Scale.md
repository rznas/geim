<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.Scale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplies two vectors component-wise.

Every component in the result is a component of `a` multiplied by the same component of `b`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints (2.0,6.0,12.0,20.0)
        print(Vector4.Scale(new Vector4(1, 2, 3, 4), new Vector4(2, 3, 4, 5)));
    }
}
```

### Description

Multiplies every component of this vector by the same component of `scale`.
