<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequestMultimedia.GetAudioClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI of the audio clip to download. |
| audioType | The type of audio encoding for the downloaded audio clip. See AudioType. |

### Returns

**UnityWebRequest** A UnityWebRequest properly configured to download an audio clip and convert it to an AudioClip.

### Description

Create a UnityWebRequest to download an audio clip via HTTP GET and create an AudioClip based on the retrieved data.

This method creates a UnityWebRequest and sets the target URL to the string `uri` argument. This method sets no other flags or custom headers.

This method attaches a DownloadHandlerAudioClip object to the UnityWebRequest. DownloadHandlerAudioClip is a specialized DownloadHandler. It is optimized for storing data which is to be used as an audio clip in the Unity Engine. Using this class significantly reduces memory reallocation compared to downloading raw bytes and creating an audio clip manually in script.

This method attaches no UploadHandler to the UnityWebRequest.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyBehaviour : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(GetAudioClip());
    }    IEnumerator GetAudioClip()
    {
        using (UnityWebRequest www = UnityWebRequestMultimedia.GetAudioClip("https://www.my-server.com/audio.ogg", AudioType.OGGVORBIS))
        {
            yield return www.SendWebRequest();            if (www.result == UnityWebRequest.Result.ConnectionError)
            {
                Debug.Log(www.error);
            }
            else
            {
                AudioClip myClip = DownloadHandlerAudioClip.GetContent(www);
            }
        }
    }
}
```
