<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_divide.html
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
        //Prints (0.5, 1.0, 1.5, 2.5)
        print(new Vector4(1, 2, 3, 5) / 2);
    }
}
```
