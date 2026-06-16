<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioEchoFilter-dryMix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Volume of original signal to pass to output. 0.0 to 1.0. Default = 1.0.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioEchoFilter))]
public class Example : MonoBehaviour
{
    // Listen to only Echo (not the original audio source)
    // Set the wet mix to 0 and you will disable the echo.    void Start()
    {
        GetComponent<AudioEchoFilter>().wetMix = 1.0f;
        GetComponent<AudioEchoFilter>().dryMix = 0.0f;
    }
}
```
