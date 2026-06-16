<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioChorusFilter-rate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Chorus modulation rate in hz. 0.0 to 20.0. Default = 0.8 hz.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioChorusFilter))]
public class Example : MonoBehaviour
{
    // Set the rate on the chorus filter to 15hz.
    void Start()
    {
        GetComponent<AudioChorusFilter>().rate = 15;
    }
}
```
