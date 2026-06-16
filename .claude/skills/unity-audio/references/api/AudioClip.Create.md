<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of clip. |
| lengthSamples | Number of sample frames. |
| channels | Number of channels per frame. |
| frequency | Sample frequency of clip. |
| _3D | Audio clip is played back in 3D. |
| stream | True if clip is streamed, that is if the pcmreadercallback generates data on the fly. |
| pcmreadercallback | This callback is invoked to generate a block of sample data. Non-streamed clips call this only once at creation time while streamed clips call this continuously. |
| pcmsetpositioncallback | This callback is invoked whenever the clip loops or changes playback position. |

### Returns

**AudioClip** A reference to the created AudioClip.

### Description

Creates a user AudioClip with a name and with the given length in samples, channels and frequency.

Set your own audio data with AudioClip.SetData. Use the PCMReaderCallback and PCMSetPositionCallback delegates to get a callback whenever the clip reads data and changes the position. If `stream` is true, Unity reads in small chunks of data on demand. If it's false, Unity reads all the samples during the creation of the clip.

**Note**: Unity expects you to pass an array with valid audio data (floating-point samples between -1.0 and 1.0) to `PCMReaderCallback`. If no audio data is available, you must fill the array with zeros. Otherwise it will result in unexpected noise or other unwanted sounds during playback.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public int position = 0;
    public int samplerate = 44100;
    public float frequency = 440;    void Start()
    {
        AudioClip myClip = AudioClip.Create("MySinusoid", samplerate * 2, 1, samplerate, true, OnAudioRead, OnAudioSetPosition);
        AudioSource aud = GetComponent<AudioSource>();
        aud.clip = myClip;
        aud.Play();
    }    void OnAudioRead(float[] data)
    {
        int count = 0;
        while (count < data.Length)
        {
            data[count] = Mathf.Sin(2 * Mathf.PI * frequency * position / samplerate);
            position++;
            count++;
        }
    }    void OnAudioSetPosition(int newPosition)
    {
        position = newPosition;
    }
}
```
