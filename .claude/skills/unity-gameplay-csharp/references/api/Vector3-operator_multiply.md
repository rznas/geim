<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_multiply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplies a vector by a number.

Multiplies each component of `a` by a number `d`.

```csharp
// make the vector twice longer: prints (2.0,4.0,6.0)
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        print(new Vector3(1.0f, 2.0f, 3.0f) * 2.0f);
    }
}
```

### Description

Multiplies a vector by a number.

Multiplies each component of `a` by a number `d`.

```csharp
// make the vector twice longer: prints (2.0f, 4.0f, 6.0f)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        print(2.0f * new Vector3(1.0f, 2.0f, 3.0f));
    }
}
```
