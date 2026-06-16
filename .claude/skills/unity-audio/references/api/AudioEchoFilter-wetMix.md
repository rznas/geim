<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioEchoFilter-wetMix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Volume of echo signal to pass to output. 0.0 to 1.0. Default = 1.0.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioEchoFilter))]
public class Example : MonoBehaviour
{
    // Mixes both Echo generated sound and the original audio source
    // if you set the wetMix to 0 you will not have Echo sounds.    void Start()
    {
        GetComponent<AudioEchoFilter>().wetMix = 1.0f;
        GetComponent<AudioEchoFilter>().dryMix = 1.0f;
    }
}
```
