<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioEchoFilter-decayRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Echo decay per delay. 0 to 1. 1.0 = No decay, 0.0 = total decay (i.e. simple 1 line delay). Default = 0.5.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioEchoFilter))]
public class Example : MonoBehaviour
{
    // Set the decayRatio on the chorus filter to total decay    void Start()
    {
        GetComponent<AudioEchoFilter>().decayRatio = 0.0f;
    }
}
```
