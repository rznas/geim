<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.PI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The well-known *3.14159265358979...* value (Read Only).

The ratio of the circumference of a circle to its diameter. Note that this value is a 32-bit floating point number i.e. a `float`. Approximately seven digits of precision are provided.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float radius = 5;    void Start()
    {
        float perimeter = 2.0f * Mathf.PI * radius;
        Debug.Log("The perimeter of the circle is: " + perimeter);
    }
}
```
