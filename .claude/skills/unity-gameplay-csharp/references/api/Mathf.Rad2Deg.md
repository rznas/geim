<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Rad2Deg.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Radians-to-degrees conversion constant (Read Only).

This is equal to *360 / (PI * 2)*.

Additional resources: Deg2Rad constant.

```csharp
using UnityEngine;public class MathfRad2Deg : MonoBehaviour
{
    // convert 1 radian to degrees    float rad = 1.0f;    void Start()
    {
        float deg = rad * Mathf.Rad2Deg;
        //This will output 1 radians are equal to 57.29578 degrees
        Debug.Log(rad + " radians are equal to " + deg + " degrees.");
    }
}
```
