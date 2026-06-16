<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.Min.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a vector that is made from the smallest components of two vectors.

Additional resources: Max function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Vector2 a = new Vector2(1, 3);
        Vector2 b = new Vector2(4, 2);
        print(Vector2.Min(a, b)); // prints (1.0,2.0)
    }
}
```
