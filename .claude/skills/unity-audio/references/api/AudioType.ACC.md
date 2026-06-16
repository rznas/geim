<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioType.ACC.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The audio file you want to stream has the Advanced Audio Coding (AAC) digital audio file format. Unity doesn’t natively support this format.

Use this enumeration value to ensure the format type of the audio file has the ACC audio file format. If it has a different format, Unity might not play the audio correctly. Use this audio type for files with the extension `.aac`.

```csharp
// This script streams an AAC audio file from the web. 
// First though you need to switch out the url to a valid url of an AAC audio file hosted on the web. 
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
        string url = "https://www.your-website.com/aacsound.aac";        // Stream audio, store it as an audio clip and play it. Make sure it has the AAC audio format. 
        using (UnityWebRequest www = UnityWebRequestMultimedia.GetAudioClip(url, AudioType.ACC))
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
