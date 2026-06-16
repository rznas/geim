<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.DeltaAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| current | The current angle in degrees. |
| target | The target angle in degrees. |

### Returns

**float** A value between -180 (exclusive) and 180 (inclusive) in degrees

### Description

Calculates the shortest difference between two angles.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints 90
        Debug.Log(Mathf.DeltaAngle(1080, 90));
    }
}
```
