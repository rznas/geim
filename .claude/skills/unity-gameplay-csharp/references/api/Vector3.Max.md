<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Max.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a vector that is made from the largest components of two vectors.

Additional resources: Min function.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector3 a = new Vector3(1, 2, 3);
    public Vector3 b = new Vector3(4, 3, 2);    void Example()
    {
        print(Vector3.Max(a, b)); // prints (4.0f, 3.0f, 3.0f)
    }
}
```
