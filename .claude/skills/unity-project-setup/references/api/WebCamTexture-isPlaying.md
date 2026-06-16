<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns if the camera is currently playing.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Tries to start the camera and outputs to the console if is was sucessful or not.
    void Start()
    {
        WebCamTexture webcamTexture = new WebCamTexture();
        webcamTexture.Play();
        Debug.Log(webcamTexture.isPlaying);
    }
}
```
