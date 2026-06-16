<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-url.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The file URL or web URL that the VideoPlayer reads content from.

In addition to URLs, this property also accepts raw paths to local files. The raw paths can either be absolute on the platform or relative to the Player root.

If the user sets both a VideoPlayer.clip and a VideoPlayer.url, the one that was set last takes precedence.

**Examples**:

```csharp
using UnityEngine; 
using UnityEngine.Video; public class UrlExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    private void Start()
    {
        // Get the VideoPlayer component from the GameObject that contains this script.  
        videoPlayer = GetComponent<VideoPlayer>();        // Using an absolute raw path to a local file.
        videoPlayer.url = "/Users/graham/movie.mov";        // Using a relative raw path to a local file.
        videoPlayer.url = "subdirectory/videofiles/movie.mov";        // Using a web URL.
        videoPlayer.url = "https://ia904602.us.archive.org/25/items/big-buck-bunny_202112/Big%20Buck%20Bunny.mp4";        // Using a file URL.
        videoPlayer.url = "file:///Users/graham/movie.mov";
    }
}
```
