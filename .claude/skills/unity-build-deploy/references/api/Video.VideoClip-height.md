<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip-height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The height of the images in the video clip in pixels. (Read Only).

You can use this property to help get the dimensions of your video and help display your video properly. Also, you can use it to calculate the image aspect ratio.

Additional resources: VideoClip.width, VideoClip.length.

```csharp
// This script creates a plane and uses the width and height of the VideoClip to resize the plane. It also plays the video on the plane. 
// Assign this script to a GameObject in your Scene, and assign a VideoClip and a Camera in the Inspector. using UnityEngine;
using UnityEngine.Video;public class WidthHeightExample : MonoBehaviour
{
    public VideoClip videoClip;
    public Camera mainCamera;    void Start()
    {
        if (videoClip != null)
        {
            // Create a plane to project the video clip onto.
            GameObject videoPlane = GameObject.CreatePrimitive(PrimitiveType.Plane);
            // Create the VideoPlayer and assign a VideoClip. 
            VideoPlayer videoPlayer = videoPlane.AddComponent<VideoPlayer>();
            videoPlayer.clip = videoClip;            // Set the plane to the same position as your GameObject.
            videoPlane.transform.position = transform.position;
            // Rotate the plane to face the camera and adjust. 
            videoPlane.transform.LookAt(mainCamera.transform);
            videoPlane.transform.Rotate(90, 0, 0);            // Get the width and height of the VideoClip so that you can resize the plane using these. 
            float videoWidth = videoClip.width;
            float videoHeight = videoClip.height;            // Define the scaling factor to control the size of the video plane.
            float scaleFactor = 1000.0f;             // Scale the plane to match the video's aspect ratio.
            float planeWidth = videoWidth / scaleFactor;
            float planeHeight = videoHeight / scaleFactor;
            videoPlane.transform.localScale = new Vector3(planeWidth, 1, planeHeight);            videoPlayer.Play();
        }
        else
        {
            Debug.LogError("Please assign a video clip.");
        }
    }
}
```
