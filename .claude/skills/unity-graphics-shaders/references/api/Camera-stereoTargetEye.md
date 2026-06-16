<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-stereoTargetEye.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines which eye of a VR display the Camera renders into.

This property is only used when Virtual Reality is enabled. The default is to render into both eyes.

The values passed to stereoTargetEye are found in the StereoTargetEyeMask enum. Every Camera renders to the Main Game Window by default. If you do not want to see the content from this Camera in the Main Game Window, use a Camera with a higher depth value than this Camera, or set the Camera's showDeviceView value to false.

This API is only available with the Built-in renderer.

Additional resources: StereoTargetEyeMask.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Camera.main.stereoTargetEye = StereoTargetEyeMask.Both;
    }
}
```
