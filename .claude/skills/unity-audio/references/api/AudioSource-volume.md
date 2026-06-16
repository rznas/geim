<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-volume.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The volume of the audio source (0.0 to 1.0).

The AudioSource’s volume property controls the level of sound coming from an AudioClip. The highest volume level is 1 and the lowest is 0 where no sound is heard.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    AudioSource m_MyAudioSource;
    //Value from the slider, and it converts to volume level
    float m_MySliderValue;    void Start()
    {
        //Initiate the Slider value to half way
        m_MySliderValue = 0.5f;
        //Fetch the AudioSource from the GameObject
        m_MyAudioSource = GetComponent<AudioSource>();
        //Play the AudioClip attached to the AudioSource on startup
        m_MyAudioSource.Play();
    }    void OnGUI()
    {
        //Create a horizontal Slider that controls volume levels. Its highest value is 1 and lowest is 0
        m_MySliderValue = GUI.HorizontalSlider(new Rect(25, 25, 200, 60), m_MySliderValue, 0.0F, 1.0F);
        //Makes the volume of the Audio match the Slider value
        m_MyAudioSource.volume = m_MySliderValue;
    }
}
```
