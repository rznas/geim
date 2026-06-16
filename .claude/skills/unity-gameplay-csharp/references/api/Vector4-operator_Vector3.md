<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4-operator_Vector3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a Vector3 to a Vector4.

Vector3s can be implicitly converted to Vector4 (w is set to zero in the result).

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // color as a Vector3 (red, green, blue)
        Vector3 color = new Vector3(1.0f, 0.25f, 0f);        // This converts the Vector3 to a Vector4 with the w parameter set to 0
        Vector4 colorWithOpacity = color;
        // set the opacity in the w parameter
        colorWithOpacity.w = 0.75f;
    }
}
```
