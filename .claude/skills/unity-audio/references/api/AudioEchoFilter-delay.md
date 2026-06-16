<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioEchoFilter-delay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Echo delay in ms. 10 to 5000. Default = 500.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioEchoFilter))]
public class Example : MonoBehaviour
{
    // Set the delay on the chorus filter to the max working value.    void Start()
    {
        GetComponent<AudioEchoFilter>().delay = 5000f;
    }
}
```
