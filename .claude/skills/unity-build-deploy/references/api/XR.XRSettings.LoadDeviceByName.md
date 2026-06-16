<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings.LoadDeviceByName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deviceName | Name of the device from XRSettings.supportedDevices. |
| prioritizedDeviceNameList | Prioritized list of device names from XRSettings.supportedDevices. |

### Description

Loads the requested device at the beginning of the next frame.

A list of supported devices which can be passed into this method can be obtained from XRSettings.supportedDevices.

In order to check for success, check XRSettings.loadedDeviceName on the next frame.

This function will try to initialize only the device(s) passed in, it will not fall back to other devices in the XRSettings.supportedDevices list. You can pass a list of values to fall back to other devices on failure. If no device could be initialized, it will fall back to XRSettings.loadedDeviceName as an empty string and set XRSettings.enabled to false.

You can disable XR by loading an empty string deviceName.

After loading a device, you may want to enable it with XRSettings.enabled.

**Note:** Some VR Devices do not support reloading when already active. You should make sure to check the currently loaded device and only load the new device if it is different.

```csharp
// Run in split-screen mode
using System;
using System.Collections;
using UnityEngine;
using UnityEngine.XR;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(LoadDevice("Split"));
    }    IEnumerator LoadDevice(string newDevice)
    {
        if (String.Compare(XRSettings.loadedDeviceName, newDevice, true) != 0)
        {
            XRSettings.LoadDeviceByName(newDevice);
            yield return null;
            XRSettings.enabled = true;
        }
    }
}
```
