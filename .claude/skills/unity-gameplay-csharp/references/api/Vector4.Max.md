<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.Max.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a vector that is made from the largest components of two vectors.

Additional resources: Min function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Vector4 a = new Vector4(1, 2, 3, 5);
        Vector4 b = new Vector4(4, 3, 2, 0);
        print(Vector4.Max(a, b)); // prints (4.0,3.0,3.0,5.0)
    }
}
```
