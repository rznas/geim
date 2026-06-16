<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start value. |
| b | The end value. |
| t | The interpolation value between the two floats. |

### Returns

**float** The interpolated float result between the two float values.

### Description

Linearly interpolates between `a` and `b` by `t`.

The parameter `t` is clamped to the range [0, 1].

When `t` = 0 returns `a`. 
 When `t` = 1 return `b`. 
 When `t` = 0.5 returns the midpoint of `a` and `b`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // animate the game object from -1 to +1 and back
    public float minimum = -1.0F;
    public float maximum =  1.0F;    // starting value for the Lerp
    static float t = 0.0f;    void Update()
    {
        // animate the position of the game object...
        transform.position = new Vector3(Mathf.Lerp(minimum, maximum, t), 0, 0);        // .. and increase the t interpolater
        t += 0.5f * Time.deltaTime;        // now check if the interpolator has reached 1.0
        // and swap maximum and minimum so game object moves
        // in the opposite direction.
        if (t > 1.0f)
        {
            float temp = maximum;
            maximum = minimum;
            minimum = temp;
            t = 0.0f;
        }
    }
}
```

Additional resources: LerpUnclamped, LerpAngle, InverseLerp.
