<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Keyframe-outTangent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the outgoing tangent for this key. The outgoing tangent affects the slope of the curve from this key to the next key.

The outgoing tangent matches the outgoing slope of the curve. A positive value for inTangent results in an upward tangent, while a negative value results in a downward tangent.

Additional resources: inTangent.

```csharp
using UnityEngine;public class KeyFrameTangentExample : MonoBehaviour
{
    AnimationCurve  animCurve = null;    void Start()
    {
        Keyframe[] ks = new Keyframe[3];        ks[0] = new Keyframe(0f, 0f);
        ks[0].outTangent = 5f;    // +5 units on the vertical axis for 1 unit on the horizontal axis.        ks[1] = new Keyframe(4f, 0f);
        ks[1].outTangent = 0f;    // straight        ks[2] = new Keyframe(6f, 0f);
        ks[2].outTangent = -5f;    // -5 units on the vertical axis for 1 unit on the horizontal axis.        animCurve = new AnimationCurve(ks);
    }    void Update()
    {
        if (animCurve != null)
            transform.position = new Vector3(Time.time, animCurve.Evaluate(Time.time), 0f);
    }
}
```
