<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UserAuthorization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enum to request permission from the user’s device for access to system features.

To request permission, pass this as a parameter to Application.RequestUserAuthorization.

```csharp
// This script outputs the feed from a video input source (if one exists) to the texture of the GameObject you attach this script to. 
// For this to work, attach this script to a GameObject that has a Renderer component. using UnityEngine;
using System.Collections;public class WebcamExample : MonoBehaviour
{
    private WebCamTexture webCamTexture;    IEnumerator Start()
    {
        // Request permission from the device for access to video input sources. 
        yield return Application.RequestUserAuthorization(UserAuthorization.WebCam);
        
        // If the user approves access to video, play video feed to GameObject's texture. 
        if (Application.HasUserAuthorization(UserAuthorization.WebCam))
        {
            // Get the first available video input source.
            string webCamName = WebCamTexture.devices[0].name;
            Debug.Log($"Selected WebCam: {webCamName}");            // Use this webcam to create a WebCamTexture.
            webCamTexture = new WebCamTexture(webCamName);            // Assign the texture to the current GameObject. 
            Renderer renderer = GetComponent<Renderer>();
            if (renderer != null)
            {
                renderer.material.mainTexture = webCamTexture;
            }            // Stream the footage from the webcam. 
            webCamTexture.Play();
        }
        else
        {
            Debug.Log("Webcam not found.");
        }
    }    void OnApplicationQuit()
    {
        // Stop the webcam feed when the application closes. 
        if (webCamTexture != null && webCamTexture.isPlaying)
        {
            webCamTexture.Stop();
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| WebCam | Request permission to use any video input sources attached to the device. |
| Microphone | Request permission to use any audio input sources attached to the device. |
