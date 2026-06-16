<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer.GetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of exposed parameter. |
| value | Return value of exposed parameter. |

### Returns

**bool** Returns false if the exposed parameter specified doesn't exist.

### Description

Returns the value of the exposed parameter specified. If the parameter doesn't exist the function returns false. Prior to calling SetFloat and after ClearFloat has been called on this parameter the value returned will be that of the current snapshot or snapshot transition.

To see your exposed parameters,

1. Double click on your audio mixer. This opens the Audio Mixer window.
2. At the top right of the **Audio Mixer** window, click on the **Exposed Parameters** button to show the list of exposed parameters.

To rename or remove a parameter, right click the item in the list. 

If the parameter you want to expose isn't in the list, you need to expose the parameter. To expose a parameter, right click the parameter you want to expose in the Audio Mixer Inspector window, and choose **Expose [parameter name] to script**.

```csharp
using System;
using UnityEngine;
using UnityEngine.Audio;// 1. Attach this script to a GameObject in your Scene.
// 2. Create an Audio Mixer and expose some variables on it.
// 3. Add an Audio Source to your Scene and assign your Audio Mixer to it. public class MixerVolumeController : MonoBehaviour
{
    // Make sure to assign your Audio Mixer in the Inspector window of the GameObject you attach this script to.
    public AudioMixer mixer;
    float volume, exposedParam;    void Start()
{    // Gets the exposed parameters "MyExposedParam" and "volume" in the Audio Mixer.
    // "MyExposedParam" is the default name for exposed parameters.
 
    // "Volume is an exposed parameter that has been renamed. 
    // Change these names to what your exposed parameters are called.     mixer.GetFloat("MyExposedParam", out exposedParam);
    Debug.Log("My Exposed Param: " + exposedParam);    mixer.GetFloat("Volume", out volume);
    Debug.Log("Volume: " + volume);
}
}
```
