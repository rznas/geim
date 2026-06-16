<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrimitiveType.Quad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A quad primitive.

Additional resources: GameObject.CreatePrimitive.

```csharp
using UnityEngine;
using System.Collections;// Creates a quad primitivepublic class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject quad = GameObject.CreatePrimitive(PrimitiveType.Quad);
    }
}
```
