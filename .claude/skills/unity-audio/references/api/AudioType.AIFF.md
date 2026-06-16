<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioType.AIFF.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The audio file you want to stream has the Audio Interchange File Format (AIFF) audio file format. Unity doesn’t support this format.

Use this enumeration value to specify the format type of the audio file has the AIFF audio file format. If the audio file has a different format, Unity might fail to play the audio correctly. Use this type for files with extension `.aiff`.

```csharp
// This script streams an AIFF audio file from the web. 
// First, you need to switch out the url to a valid url of an AIFF audio file hosted on the web. 
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
        string url = "https://www.your-website.com/aiffsound.aiff";        // Stream audio, store it as an audio clip and play it. Make sure it has the AIFF audio format. 
        using (UnityWebRequest www = UnityWebRequestMultimedia.GetAudioClip(url, AudioType.AIFF))
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
