<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/webgl-browser-access-device.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Web browser access to device features

The Unity Web platform supports WebCam access. To allow a Web application to access the webcam on a device, the browser must request its user to provide access to the **camera**. Without the permission to access the camera, the browser returns incomplete or inaccurate information.

**Note:** Currently, the Web platform supports WebCam devices only.

To request browser permission to access the webcam, use the `Application.RequestUserAuthorization` API:

```csharp
using UnityEngine;
using UnityEngine.iOS;
using System.Collections;

// Get WebCam information from the browser
public class ExampleClass : MonoBehaviour
{
    private WebCamDevice[] devices;
    
    // Use this for initialization
    IEnumerator Start()
    {
        yield return Application.RequestUserAuthorization(UserAuthorization.WebCam);
        if (Application.HasUserAuthorization(UserAuthorization.WebCam))
        {
            Debug.Log("webcam found");
            devices = WebCamTexture.devices;
            for (int cameraIndex = 0; cameraIndex < devices.Length; ++cameraIndex)
            {
                Debug.Log("devices[cameraIndex].name: ");
                Debug.Log(devices[cameraIndex].name);
                Debug.Log("devices[cameraIndex].isFrontFacing");
                Debug.Log(devices[cameraIndex].isFrontFacing);
            }
        }
        else
        {
            Debug.Log("no webcams found");
        }
    }
}
```

**Note:** Unity recommends to use the `MediaDevices.getUserMedia()` API to request user permission for accessing the device. This feature is available only in secure contexts (HTTPS).
