<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioChorusFilter-delay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Chorus delay in ms. 0.1 to 100.0. Default = 40.0 ms.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioChorusFilter))]
public class Example : MonoBehaviour
{
    // Dont use delay on the filter.
    void Start()
    {
        GetComponent<AudioChorusFilter>().delay = 0.1f;
    }
}
```
