<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrimitiveType.Capsule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A capsule primitive.

Additional resources: GameObject.CreatePrimitive.

```csharp
using UnityEngine;
using System.Collections;// Creates a capsule primitivepublic class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject capsule = GameObject.CreatePrimitive(PrimitiveType.Capsule);
    }
}
```
