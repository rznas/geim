<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_Vector2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a Vector2 to a Vector4.

Vector2s can be implicitly converted to Vector4 (z and w is set to zero in the result).

```csharp
using UnityEngine;
using System.Collections.Generic;
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Renderer renderer = GetComponent<Renderer>();        // Shader vectors are always defined as Vector4.
        // The value here is converted to a Vector4 from a Vector2.
        renderer.material.SetVector("_SomeVariable", Vector2.one);
    }
}
```
