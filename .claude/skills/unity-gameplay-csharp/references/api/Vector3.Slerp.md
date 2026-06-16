<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Slerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The first Vector3 direction to interpolate between. |
| b | The second Vector3 direction to interpolate between. |
| t | The interpolation parameter with an expected value in the range [0,1]. |

### Returns

**Vector3** The resulting spherically interpolated Vector3 direction.

### Description

Spherically interpolates between two three-dimensional vectors.

Interpolates between `a` and `b` by amount `t`. The difference between this and linear interpolation (aka, "lerp") is that the vectors are treated as directions rather than points in space. The direction of the returned vector is interpolated by the angle and its magnitude is linearly interpolated between the magnitudes of `a` and `b`.

The parameter `t` is clamped to the range [0, 1]. Setting `t==0` returns `a` whereas setting `t==1` returns `b`.

```csharp
// Animates the position in an arc between sunrise and sunset.using UnityEngine;
using System.Collections;public class Vector3SlerpExample : MonoBehaviour
{
    public Transform sunrise;
    public Transform sunset;    // Time to move from sunrise to sunset position, in seconds.
    public float journeyTime = 1.0f;    // The time at which the animation started.
    private float startTime;    void Start()
    {
        // Note the time at the start of the animation.
        startTime = Time.time;
    }    void Update()
    {
        // The center of the arc
        Vector3 center = (sunrise.position + sunset.position) * 0.5F;        // move the center a bit downwards to make the arc vertical
        center -= new Vector3(0, 1, 0);        // Interpolate over the arc relative to center
        Vector3 riseRelCenter = sunrise.position - center;
        Vector3 setRelCenter = sunset.position - center;        // The fraction of the animation that has happened so far is
        // equal to the elapsed time divided by the desired time for
        // the total journey.
        float fracComplete = (Time.time - startTime) / journeyTime;        transform.position = Vector3.Slerp(riseRelCenter, setRelCenter, fracComplete);
        transform.position += center;
    }
}
```

Additional resources: Lerp, SlerpUnclamped.
