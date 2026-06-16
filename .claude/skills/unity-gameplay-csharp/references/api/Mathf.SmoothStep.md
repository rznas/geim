<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.SmoothStep.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The start of the range. |
| to | The end of the range. |
| t | The interpolation value between the `from` and `to` range limits. |

### Returns

**float** The interpolated float result between `from` and `to`.

### Description

Interpolates between `from` and `to` with smoothing at the limits.

This function interpolates between `from` and `to` in a similar way to Lerp. However, the interpolation will gradually speed up from the start and slow down toward the end. This is useful for creating natural-looking animation, fading and other transitions.

The parameter `t` is clamped to the range [0, 1].

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Minimum and maximum values for the transition.
    float minimum = 10.0f;
    float maximum = 20.0f;    // Time taken for the transition.
    float duration = 5.0f;    float startTime;    void Start()
    {
        // Make a note of the time the script started.
        startTime = Time.time;
    }    void Update()
    {
        // Calculate the fraction of the total duration that has passed.
        float t = (Time.time - startTime) / duration;
        transform.position = new Vector3(Mathf.SmoothStep(minimum, maximum, t), 0, 0);
    }
}
```
