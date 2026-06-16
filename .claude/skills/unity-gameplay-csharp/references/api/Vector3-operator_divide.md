<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_divide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Divides a vector by a number.

Divides each component of `a` by a number `d`.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        // make the vector twice shorter: prints (0.5,1.0,1.5)
        print(new Vector3(1, 2, 3) / 2.0F);
    }
}
```
