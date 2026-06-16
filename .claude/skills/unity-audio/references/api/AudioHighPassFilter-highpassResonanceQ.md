<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioHighPassFilter-highpassResonanceQ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how much the filter's self-resonance isdampened.

Higher Highpass resonance Q indicates a lower rate of energy loss i.e. the oscillations die out more slowly.

Highpass resonance Q value goes from 1.0 to 10.0. Default = 1.0.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioHighPassFilter))]
public class Example : MonoBehaviour
{
    // Moves the Highpass Resonance Quality Factor from 0 to 10 following a Sinus function
    // Attach this to an audio source with a HighPassFilter to listen it working.    void Update()
    {
        GetComponent<AudioHighPassFilter>().highpassResonanceQ = (Mathf.Sin(Time.time) * 5 + 5);
    }
}
```
