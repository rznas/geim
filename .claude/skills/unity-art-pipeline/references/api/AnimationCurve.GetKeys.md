<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve.GetKeys.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keys | Keyframe array to copy the keys into. |

### Description

Get all keys defined in the AnimationCurve.

This lets you clear, add or remove any keys from the array. If keys are not sorted by time, they will be automatically sorted on assignment.

Note that the array is "by value", i.e. getting keys returns a copy of all keys.

Additional resources: Keyframe struct, AddKey, RemoveKey functions.

```csharp
using UnityEngine;
using Unity.Collections;public class AnimCurveExample : MonoBehaviour
{
    public AnimationCurve curve;    void Start()
    {
        curve = new AnimationCurve(new Keyframe(0, 0), new Keyframe(1, 1));
        var keys = new NativeArray<Keyframe>(curve.length, Allocator.Temp);
        curve.GetKeys(keys);
    }
}
```
