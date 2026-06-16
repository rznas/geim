<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.RequestUserAuthorization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Request authorization to use the webcam or microphone on iOS or Web.

`Application.RequestUserAuthorization` is called to request permission for microphone and camera. The application shows a dialog box to the user and waits for the operation to complete before being able to use these features.

**Note:** Use Application.HasUserAuthorization to query the result of the operation.

```csharp
using UnityEngine;
using UnityEngine.iOS;
using System.Collections;// Show WebCams and Microphones on an iPhone/iPad.
// Make sure NSCameraUsageDescription and NSMicrophoneUsageDescription
// are in the Info.plist.public class ExampleClass : MonoBehaviour
{
    IEnumerator Start()
    {
        FindWebCams();        yield return Application.RequestUserAuthorization(UserAuthorization.WebCam);
        if (Application.HasUserAuthorization(UserAuthorization.WebCam))
        {
            Debug.Log("webcam found");
        }
        else
        {
            Debug.Log("webcam not found");
        }        FindMicrophones();        yield return Application.RequestUserAuthorization(UserAuthorization.Microphone);
        if (Application.HasUserAuthorization(UserAuthorization.Microphone))
        {
            Debug.Log("Microphone found");
        }
        else
        {
            Debug.Log("Microphone not found");
        }
    }    void FindWebCams()
    {
        foreach (var device in WebCamTexture.devices)
        {
            Debug.Log("Name: " + device.name);
        }
    }    void FindMicrophones()
    {
        foreach (var device in Microphone.devices)
        {
            Debug.Log("Name: " + device);
        }
    }
}
```
