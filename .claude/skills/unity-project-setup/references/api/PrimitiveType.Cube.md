<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrimitiveType.Cube.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A cube primitive.

Additional resources: GameObject.CreatePrimitive.

```csharp
using UnityEngine;
using System.Collections;// Creates a cube primitivepublic class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
    }
}
```
