<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.InverseLerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start of the range. |
| b | The end of the range. |
| value | The point within the range you want to calculate. |

### Returns

**float** A value between zero and one, representing where the "value" parameter falls within the range defined by a and b.

### Description

Determines where a `value` lies between two points.

The a and b values define the start and end of a linear numeric range. The "value" parameter you supply represents a value which might lie somewhere within that range. This method calculates where, within the specified range, the "value" parameter falls.
 If the "value" parameter is within the range, InverseLerp returns a value between zero and one, proportional to the value's position within the range. If the "value" parameter falls outside of the range, InverseLerp returns either zero or one, depending on whether it falls before the start of the range or after the end of the range.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public float start = 20.0f;
    public float end = 40.0f;
    public float currentProgress = 22.0f;    void Start()
    {
        // the progress between start and end is stored as a 0-1 value, in 'i'
        float i = Mathf.InverseLerp(start, end, currentProgress);        // this will display "Current progress: 0.1 or 10%" in Console window
        Debug.Log("Current progress: " + i + " or " + i * 100 + "%");        // the needle of an on-screen dial could then be set to a
        // rotational angle out of 360 degrees, based on the progress.
        float dialNeedleAngle = i * 360;        //// this will display "Needle angle: 36" in Console window
        Debug.Log("Needle angle: " + dialNeedleAngle);
    }
}
```

Additional resources: Lerp.
