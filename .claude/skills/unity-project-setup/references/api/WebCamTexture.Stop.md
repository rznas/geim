<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture.Stop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops the camera.

Call Application.RequestUserAuthorization before creating a WebCamTexture.

```csharp
// Starts a camera and assigns the texture to the current renderer.
// Stops the camera when the "Stop" button is clicked and released.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public WebCamTexture webcamTexture;    void Start()
    {
        webcamTexture = new WebCamTexture();
        webcamTexture.Play();        Renderer renderer = GetComponent<Renderer>();        if (webcamTexture.isPlaying)
            renderer.material.mainTexture = webcamTexture;
    }    void OnGUI()
    {
        if (webcamTexture.isPlaying)
            if (GUILayout.Button("Stop"))
                webcamTexture.Stop();
    }
}
```
