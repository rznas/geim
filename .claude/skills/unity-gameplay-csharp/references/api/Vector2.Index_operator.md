<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the `x` or `y` component using [0] or [1] respectively.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Vector2 p = new Vector2();
        p[1] = 5; // the same as p.y = 5
    }
}
```
