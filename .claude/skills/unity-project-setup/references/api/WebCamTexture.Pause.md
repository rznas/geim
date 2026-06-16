<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture.Pause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Pauses the camera.

Call Application.RequestUserAuthorization before creating a WebCamTexture.

```csharp
// Starts a camera and assigns the texture to the current renderer.
// Pauses the camera when the "Pause" button is clicked and released.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public WebCamTexture webcamTexture;    void Start()
    {
        webcamTexture = new WebCamTexture();
        Renderer renderer = GetComponent<Renderer>();
        renderer.material.mainTexture = webcamTexture;
        webcamTexture.Play();
    }    void OnGUI()
    {
        if (webcamTexture.isPlaying)
            if (GUILayout.Button("Pause"))
                webcamTexture.Pause();            else if (GUILayout.Button("Play"))
                webcamTexture.Play();
    }
}
```
