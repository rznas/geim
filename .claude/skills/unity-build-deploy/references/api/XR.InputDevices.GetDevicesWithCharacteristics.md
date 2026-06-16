<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevices.GetDevicesWithCharacteristics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| desiredCharacteristics | A bitwise combination of the characteristics you are looking for. |
| inputDevices | A List<InputDevice> object to receive the available input devices. |

### Description

Gets the list of active XR input devices that match the specified InputDeviceCharacteristics.

This function finds any input devices available to the XR Subsystem that match the specified InputDeviceCharacteristics bitmask exactly and inserts them into the `inputDevices` list. The function does not include devices that only provide some of the desired characteristics or capabilities.

The inputDevices list is cleared before any new elements are added.

The characteristics are a bitmask, and so you can use the | operator in order to search for multiple characteristics at once.

```csharp
using UnityEngine;
using UnityEngine.XR;
using System.Collections.Generic;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        InputDeviceCharacteristics leftTrackedControllerFilter = InputDeviceCharacteristics.Controller | InputDeviceCharacteristics.TrackedDevice | InputDeviceCharacteristics.Left, leftHandedControllers;        List<InputDevice> foundControllers = new List<InputDevice>();
        InputDevices.GetDevicesWithCharacteristics(leftTrackedControllerFilter, foundControllers);
    }
}
```
