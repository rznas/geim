<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-didUpdateThisFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Did the video buffer update this frame?

Use this to check if the video buffer has changed since the last frame. When setting a low frame rate, it is likely that the video will update slower than the game. Since it would not make sense to do expensive video processing in each Update call, check this value before doing any processing.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    WebCamTexture webcamTexture;
    Color32[] data;    void Start()
    {
        // Start web cam feed
        webcamTexture =  new WebCamTexture();
        webcamTexture.Play();
        data = new Color32[webcamTexture.width * webcamTexture.height];
    }    void Update()
    {
        if (webcamTexture.didUpdateThisFrame)
        {
            webcamTexture.GetPixels32(data);
            // Do processing of data here.
        }
    }
}
```
