<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoRenderMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Type of destination for the images read by a VideoPlayer.

Set this enumeration to determine where and how the VideoPlayer renders the images of a video clip.

```csharp
// This script switches between the render modes when you press the Spacebar. 
// To set up your project for this script: 
// 1. Attach this script to a GameObject in your scene. 
// 2. Add a VideoPlayer component to your GameObject. 
// 3. Assign a Camera to the script component in the Inspector. 
// 4. Add a plane to your scene. 
// 5. Create a Material (right click in Asset folder, Create > Material). 
// 6. Create a new RenderTexture (right click in Asset folder, Create > Material).
// 7. Assign the RenderTexture to the Inspector of your material (Base Map).
// 8. Assign the material to your plane. using UnityEngine;
using UnityEngine.Video;public class VideoRenderModeExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    public RenderTexture renderTexture;
    Camera mainCamera;    // Tracks the current render mode. 
    private int renderModeIndex = 0;     void Start()
    {
        mainCamera = Camera.main;
        videoPlayer = GetComponent<VideoPlayer>();
        videoPlayer.isLooping = true; 
        UpdateRenderMode();
    }    private void Update()
    {
        // If you press the Spacebar, cycle through the render modes. 
        if (Input.GetKeyDown(KeyCode.Space)) 
        {
            renderModeIndex = (renderModeIndex + 1) % 5;
            UpdateRenderMode();
        }
    }    void UpdateRenderMode()
    {
        ClearPreviousRenderMode();
        // Switch render mode when you press the Spacebar. 
        switch (renderModeIndex)
        {
            case 0:
                SwitchToRenderTexture();
                break;
            case 1:
                SwitchToCameraNearPlane();
                break;
            case 2:
                SwitchToCameraFarPlane();
                break;
            case 3:
                SwitchToAPIOnly();
                break;
            case 4:
                SwitchToMaterialOverride();
                break; 
        }
    }    // Show video on the surface of an object. 
    void SwitchToRenderTexture()
    {
        videoPlayer.renderMode = VideoRenderMode.RenderTexture;
        videoPlayer.targetTexture = renderTexture;
        Debug.Log("Switched to RenderTexture mode");
    }    // Show the video on your screen in front of your Scene.  
    void SwitchToCameraNearPlane()
    {
        videoPlayer.renderMode = VideoRenderMode.CameraNearPlane;
        videoPlayer.targetCamera = mainCamera;
        Debug.Log("Switched to CameraNearPlane mode");
    }    // Show video in the background of your Scene, behind your objects. 
    void SwitchToCameraFarPlane()
    {
        videoPlayer.renderMode = VideoRenderMode.CameraFarPlane;
        videoPlayer.targetCamera = mainCamera;
        Debug.Log("Switched to CameraFarPlane mode");
    }    // Don't show the video anywhere. 
    void SwitchToAPIOnly()
    {
        videoPlayer.renderMode = VideoRenderMode.APIOnly;
        Debug.Log("Switched to APIOnly mode");
    }    // Show the video wherever a certain material is applied. 
    void SwitchToMaterialOverride()
    {
        videoPlayer.renderMode = VideoRenderMode.MaterialOverride;
        Debug.Log("Switched to Material Override mode");
    }    // Clear the previous render target from the VideoPlayer. 
    void ClearPreviousRenderMode()
    {
        // Temporarily disable rendering. 
        videoPlayer.renderMode = VideoRenderMode.APIOnly; 
        videoPlayer.targetTexture = null;
        videoPlayer.targetCamera = null;        // Clear the RenderTexture. 
        if (renderTexture != null)
        {
            RenderTexture.active = renderTexture;
            GL.Clear(true, true, Color.clear);
            RenderTexture.active = null;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| CameraFarPlane | Draw video content behind a camera's scene. |
| CameraNearPlane | Draw video content in front of a camera's scene. |
| RenderTexture | Draw video content into a RenderTexture. |
| MaterialOverride | Draw the video content into a user-specified property of the current GameObject's material. |
| APIOnly | Don't draw the video content anywhere, but still make it available via the VideoPlayer's texture property in the API. |
