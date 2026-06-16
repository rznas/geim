<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format type of the imported (native) data.

Use this enumeration to specify the format type of the audio file you want to play. This is mostly useful if you stream your audio from a server with UnityWebRequestMultimedia.GetAudioClip. For example, if you want to stream a file with the .ogg file extension, use AudioType.OGGVORBIS.

`UnityWebRequestMultimedia.GetAudioClip(www.your-website.com/your-file.ogg, AudioType.OGGVORBIS));`.

The format types in this enumeration are the types Unity supports natively. For other or unknown format types, use AudioType.UNKNOWN, but note that Unity might not support them. If you use the wrong format, the audio might not play correctly and Unity might throw an error. 

Additional resources: UnityWebRequestMultimedia, DownloadHandlerAudioClip.GetContent.

```csharp
// This script streams an MP3 audio file from the web. 
// First you have to change the url to a valid link to an MP3 audio file. 
// Attach this script to a GameObject. 
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyBehaviour : MonoBehaviour
{
    public AudioType audioType;
    AudioSource audioSource;    void Start()
    {
        // Add an AudioSource to your GameObject. 
        audioSource = gameObject.AddComponent<AudioSource>();
        StartCoroutine(GetAudioClip());
    }    IEnumerator GetAudioClip()
    {
        // Replace the string with where you host your audio file. 
        string url = "https://www.your-website.com/mp3sound.mp3";        // Stream audio, store it as an audio clip and play it. Make sure the file has an MPEG audio format. 
        using (UnityWebRequest www = UnityWebRequestMultimedia.GetAudioClip(url, AudioType.MPEG))
        {
            yield return www.SendWebRequest();            if (www.result == UnityWebRequest.Result.ConnectionError)
            {
                Debug.Log(www.error);
            }
            else
            {
                AudioClip myClip = DownloadHandlerAudioClip.GetContent(www);
                
                audioSource.clip = myClip;  
                audioSource.Play(); 
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| UNKNOWN | The audio file you want to stream has a file format that is unknown to Unity. |
| ACC | The audio file you want to stream has the Advanced Audio Coding (AAC) digital audio file format. Unity doesn’t natively support this format. |
| AIFF | The audio file you want to stream has the Audio Interchange File Format (AIFF) audio file format. Unity doesn’t support this format. |
| IT | The audio file you want to stream has the Impulse Tracker (IT) audio file format. |
| MOD | The audio file you want to stream has the Protracker / Fasttracker MOD audio file format. |
| MPEG | The audio file you want to stream has the MPEG (MP2 or MP3) audio file format. |
| OGGVORBIS | The audio file you want to stream has the Ogg Vorbis audio file format. |
| S3M | The audio file you want to stream has the ScreamTracker 3 audio file format. |
| WAV | The audio file you want to stream has the Microsoft WAV audio file format. |
| XM | The audio file you want to stream has the FastTracker 2 XM audio file format. |
| XMA | The audio file you want to stream has the Xbox360 XMA audio file format. |
| VAG | The audio file you want to stream has the VAG audio file format for PlayStation. |
| AUDIOQUEUE | The audio file you want to stream uses Apple’s Audio Queue file format. |
