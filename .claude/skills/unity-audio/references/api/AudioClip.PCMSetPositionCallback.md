<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip.PCMSetPositionCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The audio clip's new playback position in sample frames. |

### Description

Unity calls this delegate each time AudioClip changes read position.

Unity uses this delegate to signal when the audio clip changes its playback position, for example:

- A user seeks through an audio clip.
- The audio clip restarts.

When you use AudioClip.Create to create a clip, use this delegate as a parameter and define what happens whenever the audio clip changes position. 

The `position` Unity passes to PCMSetPositionCallback are sample frames, not individual samples. For example, if you have a clip with a sampling rate of 44,100 Hz and you seek 1.0 s into the clip, Unity does the following:

- Calls `PCMSetPositionCallback`.
- Sets the `position` parameter to 44,100 regardless of the audio channel count.

If the audio clip is stereo (2 channels), each frame has 2 samples- one per channel. The total number of samples at 1 s into the clip is 88200 (44100 frames x 2 channels), but `position` is still 44100. 

Additional resources: AudioClip.Create.

```csharp
// This script creates an audio clip, sets its data and creates a sinusoid graph when it reads the data and changes positions. 
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public int position = 0;
    public int samplerate = 44100;
    public float frequency = 440;   void Start()
    {
        AudioClip myClip = AudioClip.Create("MySinusoid", samplerate * 2, 1, samplerate, true, OnAudioRead, OnAudioSetPosition);
        AudioSource aud = GetComponent<AudioSource>();
        aud.clip = myClip;
        aud.Play();
    }// When Unity calls PCMReaderCallback, create a graph from the audio clip’s data.  
   void OnAudioRead(float[] data)
    {
        int count = 0;
        while (count < data.Length)
        {
            data[count] = Mathf.Sin(2 * Mathf.PI * frequency * position / samplerate);
            position++;
            count++;
        }
    }
//When Unity calls PCMSetPositionCallback, update the position variable. 
   void OnAudioSetPosition(int newPosition)
    {
        position = newPosition;
    }
}
```
