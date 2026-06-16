<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioType.MPEG.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The audio file you want to stream has the MPEG (MP2 or MP3) audio file format.

Use this enumeration value to ensure the format type of the audio file has the MPEG audio file format. Use this audio type for files with the extension `.mp2` or `.mp3`. If the audio file has a different format, Unity might not play the audio correctly.

```csharp
// This script streams a MPEG audio file from the web. 
// First, you need to switch out the url to a valid url of a MPEG audio file hosted on the web. 
// Attach this script to a GameObject. 
  
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class AudioTypeExample : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        // Add an AudioSource to your GameObject. 
        audioSource = gameObject.AddComponent<AudioSource>();
        StartCoroutine(GetAudioClip());
    }    IEnumerator GetAudioClip()
    {
        // Replace the string with where you host your audio file. 
        string url = "https://www.your-website.com/mpegsound.mp3";        // Stream audio, store it as an audio clip and play it. Make sure it has the MPEG audio format. 
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
