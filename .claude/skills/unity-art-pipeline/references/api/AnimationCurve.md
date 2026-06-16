<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the variation of a value over time. AnimationCurves are typically used to animate the value of Component properties in AnimationClip, but you can use them to dynamically drive any float value.

The AnimationCurve class is a core component of Unity's Animation System.
 To construct a simple AnimationCurve through code, use one of the following static utility methods:

- Use AnimationCurve.EaseInOut for a curve that smoothly transitions from one value to another.
- Use AnimationCurve.Linear for a curve that linearly transitions from one value to another.
- Use AnimationCurve.Constant for a curve that holds a constant value over its duration.

To construct a complex AnimationCurve, use AnimationCurve.AnimationCurve and AnimationCurve.AddKey.

Once constructed, use an AnimationCurve to animate the following properties:

- The GameObject position, rotation, scale, or component properties in an AnimationClip.
- The properties of ParticleSystem or VisualEffect.
- The properties of your own MonoBehaviour over time.

The following example illustrates how to use an AnimationCurve to gradually change the intensity of a Light.

```csharp
using System.Collections;
using UnityEngine;

/// <summary>
/// Increases or decreases light intensity based on an ease-in-ease-out curve.
/// </summary>
[RequireComponent(typeof(Light))]
public class SmoothLight : MonoBehaviour
{
    float m_MaxIntensity;
    AnimationCurve m_LightCurve;
    float m_CurrentTime;
    public float m_Direction;
    Light m_Light;

    void Start()
    {
        m_Light = GetComponent<Light>();
        m_MaxIntensity = m_Light.intensity;
        m_LightCurve = AnimationCurve.EaseInOut(0, 0, 1, m_MaxIntensity);

        //Initialize the current time to represent the ratio between 0 and max intensity
        var currentIntensity = Mathf.Clamp(m_Light.intensity, 0.0f, m_MaxIntensity);
        m_CurrentTime = currentIntensity / m_MaxIntensity;
    }

    //Use this method to bring the light back to the maximum intensity over one second.
    public IEnumerator TurnUp()
    {
        //Increase the intensity until we reach MaxIntensity or a TurnDown call is made.
        m_Direction = 1.0f;
        while (m_Direction > 0.0f && m_CurrentTime < m_MaxIntensity)
        {
            m_CurrentTime += Time.deltaTime;
            m_Light.intensity = m_LightCurve.Evaluate(m_CurrentTime);
            yield return null;
        }
    }

    //Use this method to bring the light back to zero intensity over one second.
    public IEnumerator TurnDown()
    {
        //Decrease the intensity until we reach MaxIntensity or a TurnDown call is made.
        m_Direction = -1.0f;
        while (m_Direction < 0.0f && m_CurrentTime > 0)
        {
            m_CurrentTime -= Time.deltaTime;
            m_Light.intensity = m_LightCurve.Evaluate(m_CurrentTime);
            yield return null;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| keys | All keys defined in the animation curve. |
| length | The number of keys in the curve. (Read Only) |
| postWrapMode | The behaviour of the animation after the last keyframe. |
| preWrapMode | The behaviour of the animation before the first keyframe. |
| this[int] | Retrieves the key at index. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| AnimationCurve | Creates an animation curve from an arbitrary number of keyframes. |

### Public Methods

| Method | Description |
| --- | --- |
| AddKey | Add a new key to the curve. |
| ClearKeys | Erases all KeyFrame from this instance of the AnimationCurve. |
| CopyFrom | Copies the keys and properties of the specified AnimationCurve object into this instance of the AnimationCurve class. |
| Evaluate | Evaluate the curve at time. |
| GetHashCode | A HashCode for the animation curve, computed using all individual Keyframe. |
| GetKeys | Get all keys defined in the AnimationCurve. |
| MoveKey | Moves the key at index to key.time and key.value. |
| RemoveKey | Removes a key. |
| SetKeys | Set all keys defined in the AnimationCurve. |
| SmoothTangents | Smooth the in and out tangents of the keyframe at index. |

### Static Methods

| Method | Description |
| --- | --- |
| Constant | Creates a constant "curve" starting at timeStart, ending at timeEnd, and set to the value value. |
| EaseInOut | Creates an ease-in and out curve starting at timeStart, valueStart and ending at timeEnd, valueEnd. |
| Linear | A straight Line starting at timeStart, valueStart and ending at timeEnd, valueEnd. |
