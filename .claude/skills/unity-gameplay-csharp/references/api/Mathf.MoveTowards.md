<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.MoveTowards.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| current | The current value. |
| target | The value to move towards. |
| maxDelta | The maximum change applied to the current value. |

### Description

Moves a value `current` towards `target`.

This function is similar Mathf.Lerp except that this function ensures the rate of change never exceeds `maxDelta` and that the current value is never greater than the `target` value. Negative values of `maxDelta` pushes the value away from `target`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    float currStrength;
    float maxStrength;
    float recoveryRate;    void Update()
    {
        currStrength = Mathf.MoveTowards(currStrength, maxStrength, recoveryRate * Time.deltaTime);
    }
}
```
