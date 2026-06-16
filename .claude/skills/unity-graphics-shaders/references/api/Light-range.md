<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-range.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum distance that light travels from a point of emission. This property does not apply to directional lights.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Pulse light's range between original range
    // and half of the original one    float duration  = 3.0f;
    float originalRange;    Light lightComponent;    void Start()
    {
        lightComponent = GetComponent<Light>();
        originalRange = lightComponent.range;
    }    void Update()
    {
        // Animate between 0 and duration.
        var amplitude = Mathf.PingPong(Time.time, duration);        // Map from 0..duration to 0.5..1 range.
        amplitude = amplitude / duration * 0.5f + 0.5f;        // Set light range.
        lightComponent.range = originalRange * amplitude;
    }
}
```

If the light is an area light, then it has an infinite number of points of emission on it. If the light is not an area light, then the light's position is the single point of emission.
