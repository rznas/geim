<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Captures a photo from the web camera and stores it in memory or on disk.

Demonstrates how to take a photo using the PhotoCapture functionality and display it on a Unity GameObject.

```csharp
using UnityEngine;
using System.Collections;
using System.Linq;
using UnityEngine.Windows.WebCam;public class PhotoCaptureExample : MonoBehaviour
{
    PhotoCapture photoCaptureObject = null;
    Texture2D targetTexture = null;    // Use this for initialization
    void Start()
    {
        Resolution cameraResolution = PhotoCapture.SupportedResolutions.OrderByDescending((res) => res.width * res.height).First();
        targetTexture = new Texture2D(cameraResolution.width, cameraResolution.height);        // Create a PhotoCapture object
        PhotoCapture.CreateAsync(false, delegate(PhotoCapture captureObject) {
            photoCaptureObject = captureObject;
            CameraParameters cameraParameters = new CameraParameters();
            cameraParameters.hologramOpacity = 0.0f;
            cameraParameters.cameraResolutionWidth = cameraResolution.width;
            cameraParameters.cameraResolutionHeight = cameraResolution.height;
            cameraParameters.pixelFormat = CapturePixelFormat.BGRA32;            // Activate the camera
            photoCaptureObject.StartPhotoModeAsync(cameraParameters, delegate(PhotoCapture.PhotoCaptureResult result) {
                // Take a picture
                photoCaptureObject.TakePhotoAsync(OnCapturedPhotoToMemory);
            });
        });
    }    void OnCapturedPhotoToMemory(PhotoCapture.PhotoCaptureResult result, PhotoCaptureFrame photoCaptureFrame)
    {
        // Copy the raw image data into our target texture
        photoCaptureFrame.UploadImageDataToTexture(targetTexture);        // Create a gameobject that we can apply our texture to
        GameObject quad = GameObject.CreatePrimitive(PrimitiveType.Quad);
        Renderer quadRenderer = quad.GetComponent<Renderer>() as Renderer;
        quadRenderer.material = new Material(Shader.Find("Unlit/Texture"));        quad.transform.parent = this.transform;
        quad.transform.localPosition = new Vector3(0.0f, 0.0f, 3.0f);        quadRenderer.material.SetTexture("_MainTex", targetTexture);        // Deactivate our camera
        photoCaptureObject.StopPhotoModeAsync(OnStoppedPhotoMode);
    }    void OnStoppedPhotoMode(PhotoCapture.PhotoCaptureResult result)
    {
        // Shutdown our photo capture resource
        photoCaptureObject.Dispose();
        photoCaptureObject = null;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| SupportedResolutions | A list of all the supported device resolutions for taking pictures. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose must be called to shutdown the PhotoCapture instance. |
| GetUnsafePointerToVideoDeviceController | Provides a COM pointer to the native IVideoDeviceController. |
| StartPhotoModeAsync | Asynchronously starts photo mode. |
| StopPhotoModeAsync | Asynchronously stops photo mode. |
| TakePhotoAsync | Asynchronously captures a photo from the web camera and saves it to disk. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateAsync | Asynchronously creates an instance of a PhotoCapture object that can be used to capture photos. |

### Delegates

| Delegate | Description |
| --- | --- |
| OnCapturedToDiskCallback | Called when a photo has been saved to the file system. |
| OnCapturedToMemoryCallback | Called when a photo has been captured to memory. |
| OnCaptureResourceCreatedCallback | Called when a PhotoCapture resource has been created. |
| OnPhotoModeStartedCallback | Called when photo mode has been started. |
| OnPhotoModeStoppedCallback | Called when photo mode has been stopped. |
