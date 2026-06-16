<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-operator_subtract.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subtracts color `b` from color `a`. Each component is subtracted separately.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color redColor = Color.magenta - Color.blue;
    }
}
```
