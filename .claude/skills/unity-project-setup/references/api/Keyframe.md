<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Keyframe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A keyframe that can be injected into an AnimationCurve.

Keyframes are used to control how the value of an AnimationCurve changes over time. Each Keyframe is determined by its position in the AnimationCurve through the Keyframe.time (horizontal axis) and Keyframe.value (vertical axis) properties. You can control how interpolation is handled between different Keyframes and the AnimationCurve slopes through the Keyframe.inTangent, Keyframe.outTangent, Keyframe.weightedMode, Keyframe.inWeight and Keyframe.outWeight properties. Note that unlike what the Keyframe.time property name might imply, it is not actually tied to time and can simply be thought of as a position on the horizontal axis of a two-dimensional space.

 **Hermite Segment**

 When both keyframes weightedMode are set to `WeightedMode.None`, the curve segment is interpolated using a Hermite curve algorithm. Hermite evaluates faster than Bezier and is the default weightedMode for a Keyframe.

 **Bezier Segment**

 Setting weightedMode will change how the neighbouring segments are interpolated. Weighted segments are interpolated using a Bezier curve algorithm. For a given weighted keyframe, the interpolating function uses the Keyframe.outWeight value and the next keyframe’s Keyframe.inWeight alongside both keyframes values to calculate the curve. If no weight is set (when either keyframe Keyframe.weightedMode is set to `WeightedMode.None`), then a weight value of 1/3 is used.

 Additional resources: AnimationCurve.AddKey, AnimationCurve.keys, AnimationCurve.Evaluate.

```csharp
using UnityEngine;//This script makes the GameObject move back and forth from -5 to +5 on the x-axis
public class KeyFrameExample : MonoBehaviour
{
    AnimationCurve  animCurve = null;    void Start()
    {
        Keyframe[] ks = new Keyframe[2];        ks[0] = new Keyframe(0f, -5f); //Create a Keyframe at time 0 with a value of -5f        ks[1] = new Keyframe(1f, 5f); //Create a Keyframe at time 1 with a value of 5f        animCurve = new AnimationCurve(ks);
        animCurve.postWrapMode = WrapMode.PingPong; //Set the WrapMode to PingPong in order to make the GameObject go back and forth
    }    void Update()
    {
        if (animCurve != null)
            transform.position = new Vector3(animCurve.Evaluate(Time.time), 0.0f, 0.0f);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| inTangent | Sets the incoming tangent for this key. The incoming tangent affects the slope of the curve from the previous key to this key. |
| inWeight | Sets the incoming weight for this key. The incoming weight affects the slope of the curve from the previous key to this key. |
| outTangent | Sets the outgoing tangent for this key. The outgoing tangent affects the slope of the curve from this key to the next key. |
| outWeight | Sets the outgoing weight for this key. The outgoing weight affects the slope of the curve from this key to the next key. |
| time | The time of the keyframe. |
| value | The value of the curve at keyframe. |
| weightedMode | Weighted mode for the keyframe. |

### Constructors

| Constructor | Description |
| --- | --- |
| Keyframe | Creates a keyframe with a Keyframe.weightedMode defaulting to WeightedMode.None. |
