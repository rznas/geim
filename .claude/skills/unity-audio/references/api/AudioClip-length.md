<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip-length.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The length of the audio clip in seconds. (Read Only)

```csharp
//Attach an AudioSource component to a GameObject along with this script.
//Click and drag or choose an Audio clip to the AudioClip field in the AudioSource.
//Click and drag or choose a different Audio clip for the Audio Clip 2 field in the Inspector window.//This script switches between two Audio clips and outputs each of their lengths in the console
//In Play Mode, press the space key to switch between the Audio clipsusing UnityEngine;
using UnityEngine.Audio;public class AudioClipLengthExample : MonoBehaviour
{
    //Make sure your GameObject has an AudioSource component first
    AudioSource m_AudioSource;    //Make sure to set an Audio Clip in the AudioSource component
    AudioClip m_AudioClip;    //Make sure you set an AudioClip in the Inspector window
    public AudioClip m_AudioClip2;    void Start()
    {
        //Fetch the AudioSource from the GameObject
        m_AudioSource = GetComponent<AudioSource>();        //Set the original AudioClip as this clip
        m_AudioClip = m_AudioSource.clip;        //Output the current clip's length
        Debug.Log("Audio clip length : " + m_AudioSource.clip.length);
    }    void Update()
    {
        //Press this key to switch Audio Clips
        if (Input.GetKeyDown(KeyCode.Space))
        {
            SwitchAudio();
        }
    }    void SwitchAudio()
    {
        //If the current Audio clip is the original Audio clip, switch to the second clip
        if (m_AudioSource.clip == m_AudioClip)
        {
            //Switch to the second clip
            m_AudioSource.clip = m_AudioClip2;            //Play the second clip
            m_AudioSource.Play();
        }
        //Otherwise, if the current Audio clip is the second clip, switch back
        else if (m_AudioSource.clip == m_AudioClip2)
        {
            //Switch back to the original Audio clip
            m_AudioSource.clip = m_AudioClip;            //Play the original clip
            m_AudioSource.Play();
        }        //Output the length of the current Audio clip
        Debug.Log("Audio clip length : " + m_AudioSource.clip.length);
    }
}
```
