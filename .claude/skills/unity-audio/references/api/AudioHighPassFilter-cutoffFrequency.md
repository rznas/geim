<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioHighPassFilter-cutoffFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Highpass cutoff frequency in hz. 10.0 to 22000.0. Default = 5000.0.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioHighPassFilter))]
public class Example : MonoBehaviour
{
    // Moves the cuttoutFrequency from 10 to 22000 following a Sinus function
    // Attach this to an audio source with a HighPassFilter to listen it working.    void Update()
    {
        GetComponent<AudioHighPassFilter>().cutoffFrequency = (Mathf.Sin(Time.time) * 11010 + 11000);
    }
}
```
