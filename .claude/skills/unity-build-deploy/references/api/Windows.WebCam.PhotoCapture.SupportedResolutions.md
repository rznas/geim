<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.SupportedResolutions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A list of all the supported device resolutions for taking pictures.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Windows.WebCam;public class PhotoCaptureResolutionExample : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        foreach (Resolution resolution in PhotoCapture.SupportedResolutions)
        {
            Debug.Log(resolution);
        }
    }
}
```

Prints out a list of all the supported device resolutions that can be used when taking pictures.
