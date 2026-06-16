<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioChorusFilter-wetMix3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Volume of 3rd chorus tap. This tap is 90 degrees out of phase of the second tap. 0.0 to 1.0. Default = 0.5.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
[RequireComponent(typeof(AudioChorusFilter))]
public class Example : MonoBehaviour
{
    // Produce random mixes with the Chorus filter.    AudioChorusFilter filter;    void Start()
    {
        filter = GetComponent<AudioChorusFilter>();
    }    void Update()
    {
        filter.wetMix1 = Mathf.Sin(Time.time) * 0.5f + 0.5f;
        filter.wetMix2 = Mathf.Cos(Time.time) * 0.5f + 0.5f;
        filter.wetMix3 = Random.Range(0.0f, 1.0f);
    }
}
```
