<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Approximately.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compares two floating point values and returns true if they are similar.

Floating point imprecision makes comparing floats using the equals operator inaccurate. For example, `(1.0 == 10.0 / 10.0)` might not return true every time. Approximately() compares two floats and returns true if they are within a small value (Epsilon) of each other.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        if (Mathf.Approximately(1.0f, 10.0f / 10.0f))
        {
            print("The values are approximately the same");
        }
    }
}
```
