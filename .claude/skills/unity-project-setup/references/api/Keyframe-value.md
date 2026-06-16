<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Keyframe-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The value of the curve at keyframe.

In a 2D graph you could think of this as the y-value.

Additional resources: time.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        AnimationCurve curve = AnimationCurve.Linear(0, 0, 5, 5);
        // Extract the time from the first keyframe of a curve
        Debug.Log(curve[0].value);
    }
}
```
