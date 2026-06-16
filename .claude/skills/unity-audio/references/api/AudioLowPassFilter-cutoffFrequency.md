<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioLowPassFilter-cutoffFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Lowpass cutoff frequency in hz. Unity cuts off frequencies higher than this value. Ranges from 10.0 to 22000.0. Default = 5000.0.

Note that setting this value will reset any custom cutoff curve set for this AudioLowPassFilter.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioLowPassFilter))]
public class Example : MonoBehaviour
{
    // Moves the cuttoutFrequency from 10 to 22000 following a Sinus function
    // Attach this to an audio source with a LowPassFilter to listen to it working.    void Update()
    {
        GetComponent<AudioLowPassFilter>().cutoffFrequency = (Mathf.Sin(Time.time) * 11010 + 11000);
    }
}
```
