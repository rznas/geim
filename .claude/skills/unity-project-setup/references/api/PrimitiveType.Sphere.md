<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrimitiveType.Sphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A sphere primitive.

Additional resources: GameObject.CreatePrimitive.

```csharp
using UnityEngine;
using System.Collections;// Creates a sphere primitivepublic class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
    }
}
```
