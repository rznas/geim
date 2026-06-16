<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-pitch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The pitch of the audio source.

Pitch makes a melody go higher or lower. For example, if you play an audio clip with pitch set to one, increasing the pitch as the clip plays will make the clip sound higher. Similarly, decreasing the pitch to less than one makes the clip sound lower. When resource is an AudioClip, the pitch property is clamped to the range [-3..3]. When resource is an AudioRandomContainer, the pitch property is ignored, and if it is not in the range [0.0001..3.0], a warning appears in the console. This is due to AudioRandomContainer not supporting reverse/pause playback from the pitch. Any values outside this range are clamped when changing from an AudioClip to an AudioRandomContainer.

```csharp
//Attach this script to a GameObject.
//Attach an AudioSource to your GameObject (Click Add Component and go to Audio>Audio Source). Choose an audio clip in the AudioClip field.
//This script sets the pitch of the audio at the start, and then gradually turns it down to 0 as time passes.using UnityEngine;//Make sure there is an Audio Source component on the GameObject
[RequireComponent(typeof(AudioSource))]public class ExampleScript : MonoBehaviour
{
    public int startingPitch = 4;
    public int timeToDecrease = 5;
    AudioSource audioSource;    void Start()
    {
        //Fetch the AudioSource from the GameObject
        audioSource = GetComponent<AudioSource>();        //Initialize the pitch
        audioSource.pitch = startingPitch;
    }    void Update()
    {
        //While the pitch is over 0, decrease it as time passes.
        if (audioSource.pitch > 0)
        {
            audioSource.pitch -= Time.deltaTime * startingPitch / timeToDecrease;
        }
    }
}
```

Another example:

```csharp
using UnityEngine;// A script that plays your chosen song.  The pitch starts at 1.0.
// You can increase and decrease the pitch and hear the change
// that is made.public class AudioExample : MonoBehaviour
{
    public float pitchValue = 1.0f;
    public AudioClip mySong;    private AudioSource audioSource;
    private float low = 0.75f;
    private float high = 1.25f;    void Awake()
    {
        audioSource = GetComponent<AudioSource>();
        audioSource.clip = mySong;
        audioSource.loop = true;
    }    void OnGUI()
    {
        pitchValue = GUI.HorizontalSlider(new Rect(25, 75, 100, 30), pitchValue, low, high);
        audioSource.pitch = pitchValue;
    }
}
```
