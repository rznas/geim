<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.PlayScheduled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Time in seconds on the absolute time-line that AudioSettings.dspTime refers to for when the sound should start playing. |

### Description

Plays the clip at a specific time on the absolute time-line that AudioSettings.dspTime reads from.

This is the preferred way to stitch AudioClips in music players because it is independent of the frame rate and gives the audio system enough time to prepare the playback of the sound to fetch it from media where the opening and buffering takes a lot of time (streams) without causing sudden CPU spikes.

```csharp
using UnityEngine;
using System.Collections;// Basic demonstration of a music system that uses PlayScheduled to preload and sample-accurately
// stitch two AudioClips in an alternating fashion.  The code assumes that the music pieces are
// each 16 bars (4 beats / bar) at a tempo of 140 beats per minute.
// To make it stitch arbitrary clips just replace the line
//   nextEventTime += (60.0 / bpm) * numBeatsPerSegment
// by
//   nextEventTime += clips[flip].length;[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    public float bpm = 140.0f;
    public int numBeatsPerSegment = 16;
    public AudioClip[] clips = new AudioClip[2];    private double nextEventTime;
    private int flip = 0;
    private AudioSource[] audioSources = new AudioSource[2];
    private bool running = false;    void Start()
    {
        for (int i = 0; i < 2; i++)
        {
            GameObject child = new GameObject("Player");
            child.transform.parent = gameObject.transform;
            audioSources[i] = child.AddComponent<AudioSource>();
        }        nextEventTime = AudioSettings.dspTime + 2.0f;
        running = true;
    }    void Update()
    {
        if (!running)
        {
            return;
        }        double time = AudioSettings.dspTime;        if (time + 1.0f > nextEventTime)
        {
            // We are now approx. 1 second before the time at which the sound should play,
            // so we will schedule it now in order for the system to have enough time
            // to prepare the playback at the specified time. This may involve opening
            // buffering a streamed file and should therefore take any worst-case delay into account.
            audioSources[flip].clip = clips[flip];
            audioSources[flip].PlayScheduled(nextEventTime);            Debug.Log("Scheduled source " + flip + " to start at time " + nextEventTime);            // Place the next event 16 beats from here at a rate of 140 beats per minute
            nextEventTime += 60.0f / bpm * numBeatsPerSegment;            // Flip between two audio sources so that the loading process of one does not interfere with the one that's playing out
            flip = 1 - flip;
        }
    }
}
```

The example at AudioSource.SetScheduledEndTime shows how you can play two audio clips without pops or clicks between the clips. The approach is to have two AudioSources with clips attached, and queue up each clip using its AudioSource.

Additional resources: AudioSource.SetScheduledStartTime.
