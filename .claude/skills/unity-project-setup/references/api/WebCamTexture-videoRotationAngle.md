<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture-videoRotationAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns an clockwise angle (in degrees), which can be used to rotate a polygon so camera contents are shown in correct orientation.

Call Application.RequestUserAuthorization before creating a WebCamTexture.

```csharp
// Starts a camera and assigns the texture to the current renderer.
// Updates polygon's orientation according to camera's given angle.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public WebCamTexture webcamTexture;
    public Quaternion baseRotation;
    void Start()
    {
        webcamTexture = new WebCamTexture();
        Renderer renderer = GetComponent<Renderer>();
        renderer.material.mainTexture = webcamTexture;
        baseRotation = transform.rotation;
        webcamTexture.Play();
    }    void Update()
    {
        transform.rotation = baseRotation * Quaternion.AngleAxis(webcamTexture.videoRotationAngle, Vector3.up);
    }
}
```
