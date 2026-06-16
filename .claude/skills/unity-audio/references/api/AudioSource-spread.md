<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-spread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the spread angle (in degrees) of a 3d stereo or multichannel sound in speaker space.

0 = all sound channels are located at the same speaker location and is 'mono'. 360 = all subchannels are located at the opposite speaker location to the speaker location that it should be according to 3D position. Default = 0.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // when any AudioSource goes trough this transform, it will set it as 'mono'
    // and will restore the value to 3D effect after exiting
    // Make sure the audio source has a collider.
    void OnTriggerEnter(Collider other)
    {
        AudioSource audio = other.GetComponent<AudioSource>();        if (audio)
        {
            audio.spread = 0;
        }
    }    void OnTriggerExit(Collider other)
    {
        AudioSource audio = other.GetComponent<AudioSource>();        if (audio)
        {
            audio.spread = 360;
        }
    }
}
```
