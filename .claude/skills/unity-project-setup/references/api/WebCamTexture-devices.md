<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-devices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Return a list of available devices.

This queries the system for the list of devices connected and it can be slow. You should cache this value by keeping a copy of the result if you want to use it repeatedly.

**Note:** On devices running Android 10 and newer versions, this list includes both [logical and physical](https://developer.android.com/media/camera/camera2/multi-camera#logical) cameras, if the device exposes them. On Android 9, this list includes only logical cameras because requesting characteristics for physical cameras isn't supported.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Gets the list of devices and prints them to the console.
    void Start()
    {
        WebCamDevice[] devices = WebCamTexture.devices;
        for (int i = 0; i < devices.Length; i++)
            Debug.Log(devices[i].name);
    }
}
```
