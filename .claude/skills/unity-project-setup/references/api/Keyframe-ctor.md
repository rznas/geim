<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Keyframe-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Keyframe.time of the Keyframe. |
| value | Keyframe.value of the Keyframe. |

### Description

Creates a keyframe with a Keyframe.weightedMode defaulting to WeightedMode.None.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Make a GameObject follow a sine function.
    // Over the X and Y axis.    AnimationCurve anim;
    Keyframe[] ks;    void Start()
    {
        ks = new Keyframe[50];
        for (var i = 0; i < ks.Length; i++)
        {
            ks[i] = new Keyframe(i, Mathf.Sin(i));
        }
        anim = new AnimationCurve(ks);
    }    void Update()
    {
        transform.position = new Vector3(Time.time, anim.Evaluate(Time.time), 0);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| time | Keyframe.time of the Keyframe. |
| value | Keyframe.value of the Keyframe. |
| inTangent | Keyframe.inTangent value for this Keyframe. |
| outTangent | Keyframe.outTangent value for this Keyframe. |

### Description

Creates a keyframe with a Keyframe.weightedMode defaulting to WeightedMode.None.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Make a GameObject follow a sine function.
    // Over the X and Y axis.    AnimationCurve anim;
    Keyframe[] ks;    void Start()
    {
        ks = new Keyframe[50];
        for (var i = 0; i < ks.Length; i++)
        {
            ks[i] = new Keyframe(i, Mathf.Sin(i), 90f, 90f);
        }
        anim = new AnimationCurve(ks);
    }    void Update()
    {
        transform.position = new Vector3(Time.time, anim.Evaluate(Time.time), 0);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| time | Keyframe.time of the Keyframe. |
| value | Keyframe.value of the Keyframe. |
| inTangent | Keyframe.inTangent value for this Keyframe. |
| outTangent | Keyframe.outTangent value for this Keyframe. |
| inWeight | Keyframe.inWeight value for this Keyframe. |
| outWeight | Keyframe.outWeight value for this Keyframe. |

### Description

Creates a keyframe with a Keyframe.weightedMode defaulting to WeightedMode.Both.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Make a GameObject follow a sine function.
    // Over the X and Y axis.    AnimationCurve anim;
    Keyframe[] ks;    void Start()
    {
        ks = new Keyframe[50];
        for (var i = 0; i < ks.Length; i++)
        {
            ks[i] = new Keyframe(i, Mathf.Sin(i), 0f, 0f, 0f, 0f);
        }
        anim = new AnimationCurve(ks);
    }    void Update()
    {
        transform.position = new Vector3(Time.time, anim.Evaluate(Time.time), 0f);
    }
}
```
