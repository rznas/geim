<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioChorusFilter-dryMix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Volume of original signal to pass to output. 0.0 to 1.0. Default = 0.5.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioChorusFilter))]
public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<AudioChorusFilter>().dryMix = 0f;
    }
}
```
