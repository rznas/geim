<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-gyro.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns default gyroscope.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Use this to return the gyroscope details of your device. Ensure first that your device has a gyroscope. Use Input.gyro.enabled to check this.

Knowing the gyroscope details of a device enables you the ability to include features that need to know a device’s orientation. Common uses include changing camera angles or GameObject’s positions when a user rotates and moves their device.

```csharp
//Attach this script to a GameObject in your Scene.
using UnityEngine;
using UnityEngine.UI;public class InputGyroExample : MonoBehaviour
{
    Gyroscope m_Gyro;    void Start()
    {
        //Set up and enable the gyroscope (check your device has one)
        m_Gyro = Input.gyro;
        m_Gyro.enabled = true;
    }//This is a legacy function, check out the UI section for other ways to create your UI
    void OnGUI()
    {
        //Output the rotation rate, attitude and the enabled state of the gyroscope as a Label
        GUI.Label(new Rect(500, 300, 200, 40), "Gyro rotation rate " + m_Gyro.rotationRate);
        GUI.Label(new Rect(500, 350, 200, 40), "Gyro attitude" + m_Gyro.attitude);
        GUI.Label(new Rect(500, 400, 200, 40), "Gyro enabled : " + m_Gyro.enabled);
    }
}
```
