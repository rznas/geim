<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds two vectors.

Adds corresponding components together.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        print(new Vector4(1, 2, 3, 4) + new Vector4(5, 6, 7, 8));
    }
}
```
