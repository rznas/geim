<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioChorusFilter-feedback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Chorus feedback. Controls how much of the wet signal gets fed back into the chorus buffer. 0.0 to 1.0. Default = 0.0.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioChorusFilter))]
public class Example : MonoBehaviour
{
    // Process only once the signal and dont introduce feedback to the filter.
    void Start()
    {
        GetComponent<AudioChorusFilter>().feedback = 0f;
    }
}
```
