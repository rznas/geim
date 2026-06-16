<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-captureDeltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Slows your application’s playback time to allow Unity to save screenshots in between frames.

If this property has a non-zero value then Time.time increases at an interval of captureDeltaTime (scaled by Time.timeScale) regardless of real time and the duration of a frame. This is useful if you want to capture a movie where you need a constant frame rate and want to leave enough time between frames to save screen images.

 **Note:** captureDeltaTime does not have any affect on Time.unscaledTime. Therefore, if parts of your application rely on it for animations or other effects, captureDeltaTime might not be enough to capture a movie.

```csharp
using UnityEngine;
using System.Collections;// Capture frames as a screenshot sequence. Images are
// stored as PNG files in a folder - these can be combined into
// a movie using image utility software (eg, QuickTime Pro).public class ExampleClass : MonoBehaviour
{
    // The folder to contain our screenshots.
    // If the folder exists we will append numbers to create an empty folder.
    public string folder = "ScreenshotFolder";
    public int frameRate = 25;
    void Start()
    {
        // Set the playback framerate (real time will not relate to game time after this).
        Time.captureDeltaTime = 1.0f / frameRate;        // Create the folder
        System.IO.Directory.CreateDirectory(folder);
    }    void Update()
    {
        // Append filename to folder name (format is '0005 shot.png"')
        string name = string.Format("{0}/{1:D04} shot.png", folder, Time.frameCount);        // Capture the screenshot to the specified file.
        ScreenCapture.CaptureScreenshot(name);
    }
}
```
