<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetJoystickNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** Returns an array of joystick and gamepad device names.

### Description

Retrieves a list of input device names corresponding to the index of an Axis configured within Input Manager.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

The strings returned are taken from the connected device's "friendly name" as reported by the operating system. That is, the names are not fixed and will likely vary between devices, drivers, and the OS itself.

These strings are intended for use within input configuration screens - this way, instead of showing labels like "Joystick 1", you can show more meaningful names like "Logitech WingMan". To read values from different joysticks, you need to assign respective axes for the number of joysticks you want to support in the Input Manager.

The position of a joystick in this array corresponds to the joystick number, i.e. the name in position 0 of this array is for the joystick that feeds data into 'Joystick 1' in the Input Manager, the name in position 1 corresponds to 'Joystick 2', and so on. Note that some entries in the array may be blank if no device is connected for that joystick number.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints a joystick name if movement is detected.    void Update()
    {
        // requires you to set up axes "Joy0X" - "Joy3X" and "Joy0Y" - "Joy3Y" in the Input Manager
        for (int i = 0; i < 4; i++)
        {
            if (Mathf.Abs(Input.GetAxis("Joy" + i + "X")) > 0.2 ||
                Mathf.Abs(Input.GetAxis("Joy" + i + "Y")) > 0.2)
            {
                Debug.Log(Input.GetJoystickNames()[i] + " is moved");
            }
        }
    }
}
```
