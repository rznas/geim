<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keys | An array of Keyframes used to define the curve. |

### Description

Creates an animation curve from an arbitrary number of keyframes.

This creates a curve from variable number of Keyframe parameters. If you want to create curve from an array of keyframes, create an empty curve and assign keys property.

```csharp
using UnityEngine;
using System.Collections;public class AnimCurveExample : MonoBehaviour
{
    public AnimationCurve curve;    void Start()
    {
        curve = new AnimationCurve(new Keyframe(0, 0), new Keyframe(1, 1));
        curve.preWrapMode = WrapMode.PingPong;
        curve.postWrapMode = WrapMode.PingPong;
    }    void Update()
    {
        transform.position = new Vector3(transform.position.x, curve.Evaluate(Time.time), transform.position.z);
    }
}
```

### Description

Creates an empty animation curve.
