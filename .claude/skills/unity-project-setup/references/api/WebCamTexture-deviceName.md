<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-deviceName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this to specify the name of the device to use.

This only has an effect when set while the camera is not running.

**Note:** If you want to use WebCamTexture to get the camera stream from a device connected through Unity Remote, you must initialize it through the constructor. It's not possible to change the device using WebCamTexture.deviceName from regular to remote devices and vice versa.

```csharp
// Sets the device of the WebCamTexture to the first one available and starts playing it
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        WebCamDevice[] devices = WebCamTexture.devices;
        WebCamTexture webcamTexture = new WebCamTexture();        if (devices.Length > 0)
        {
            webcamTexture.deviceName = devices[0].name;
            webcamTexture.Play();
        }
    }
}
```
