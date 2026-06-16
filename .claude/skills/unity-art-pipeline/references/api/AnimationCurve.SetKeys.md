<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve.SetKeys.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keys | Keyframe array to assign to the AnimationCurve. |

### Description

Set all keys defined in the AnimationCurve.

This lets you clear, add or remove any keys from the array. If keys are not sorted by time, they will be automatically sorted on assignment.

Note that the array is "by value", i.e. setting keys copies them into the curve.

Additional resources: Keyframe struct, AddKey, RemoveKey functions.

```csharp
using UnityEngine;
using Unity.Collections;public class AnimCurveExample : MonoBehaviour
{
    public AnimationCurve curve;    void Start()
    {
        curve = new AnimationCurve();
        var keys = new NativeArray<Keyframe>(2, Allocator.Temp);
        keys[0] = new Keyframe(0, 0);
        keys[1] = new Keyframe(1, 1); 
        curve.SetKeys(keys);
    }
}
```
