<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.TakePhotoAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filename | The location where the photo should be saved. The filename must end with a png or jpg file extension. |
| fileOutputFormat | The encoding format that should be used. |
| onCapturedPhotoToDiskCallback | Invoked once the photo has been saved to disk. |
| onCapturedPhotoToMemoryCallback | Invoked once the photo has been copied to the target texture. |

### Description

Asynchronously captures a photo from the web camera and saves it to disk.

This method can either be used in two ways. You can use this method to capture a photo from the web camera directly into CPU memory. You can then apply the image data to a texture for use in Unity or pass the image data to an external plugin. When capturing a photo directly to memory, you will also be provided with spatial information that will allow you to know where the image was taken spatially. You can also capture a photo directly to disk as either a png or jpg.

[EXIF](https://en.wikipedia.org/wiki/Exchangeable_image_file_format) metadata will be encoded into the captured image when saving the image in the JPEG format. You may save the captured image in the JPEG format when using the BGRA32 and NV12 pixel formats. You may only save the captured image as a PNG when using the BGRA32 pixel format.

This example will capture an Image from the Web Camera and save it to disk.

```csharp
using UnityEngine;
using System.Collections;
using System.Linq;
using UnityEngine.Windows.WebCam;public class PhotoCaptureToDiskExample : MonoBehaviour
{
    PhotoCapture photoCaptureObject = null;    static readonly int TotalImagesToCapture = 3;
    int capturedImageCount = 0;    // Use this for initialization
    void Start()
    {
        Resolution cameraResolution = PhotoCapture.SupportedResolutions.OrderByDescending((res) => res.width * res.height).First();
        Texture2D targetTexture = new Texture2D(cameraResolution.width, cameraResolution.height);        PhotoCapture.CreateAsync(false, delegate(PhotoCapture captureObject) {
            Debug.Log("Created PhotoCapture Object");
            photoCaptureObject = captureObject;            CameraParameters c = new CameraParameters();
            c.hologramOpacity = 0.0f;
            c.cameraResolutionWidth = targetTexture.width;
            c.cameraResolutionHeight = targetTexture.height;
            c.pixelFormat = CapturePixelFormat.BGRA32;            captureObject.StartPhotoModeAsync(c, delegate(PhotoCapture.PhotoCaptureResult result) {
                Debug.Log("Started Photo Capture Mode");
                TakePicture();
            });
        });
    }    void OnCapturedPhotoToDisk(PhotoCapture.PhotoCaptureResult result)
    {
        Debug.Log("Saved Picture To Disk!");        if (capturedImageCount < TotalImagesToCapture)
        {
            TakePicture();
        }
        else
        {
            photoCaptureObject.StopPhotoModeAsync(OnStoppedPhotoMode);
        }
    }    void TakePicture()
    {
        capturedImageCount++;
        Debug.Log(string.Format("Taking Picture ({0}/{1})...", capturedImageCount, TotalImagesToCapture));
        string filename = string.Format(@"CapturedImage{0}.jpg", capturedImageCount);
        string filePath = System.IO.Path.Combine(Application.persistentDataPath, filename);        photoCaptureObject.TakePhotoAsync(filePath, PhotoCaptureFileOutputFormat.JPG, OnCapturedPhotoToDisk);
    }    void OnStoppedPhotoMode(PhotoCapture.PhotoCaptureResult result)
    {
        photoCaptureObject.Dispose();
        photoCaptureObject = null;        Debug.Log("Captured images have been saved at the following path.");
        Debug.Log(Application.persistentDataPath);
    }
}
```
