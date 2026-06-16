<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-streamingAssetsPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path to the `StreamingAssets` folder (Read Only).

Use the `StreamingAssets` folder to store assets. Create it in your project at **Assets/StreamingAssets**. At runtime, `Application.streamingAssetsPath` provides the path to the folder. In a built Player, the StreamingAssets location can differ from the project folder, so always use `Application.streamingAssetsPath`. Add the asset name to `Application.streamingAssetsPath`. The built application can load the asset at this address. You can use the Debug.Log class to print the path to the `StreamingAssets` folder to the Unity Console.

You cannot use synchronous filesystem APIs, such as the C# `System.IO.File` class, to access the `StreamingAssets` folder on the WebGL and Android platforms. No file access is available on WebGL. Android uses a compressed `.apk` file. These platforms return a URL. Use the UnityWebRequest class to access the assets.

You can add streaming assets to the Player build without placing them in the `StreamingAssets` folder by using BuildPlayerProcessor.PrepareForBuild. This is useful for including files located outside your Unity project.

```csharp
using UnityEngine;
using System.IO;
using UnityEngine.Video;// Application-streamingAssetsPath example.
//
// Play a video and let the user stop/start it.
// The video location is StreamingAssets. The video is
// played on the camera background.public class Example : MonoBehaviour
{
    private UnityEngine.Video.VideoPlayer videoPlayer;
    private string status;    void Start()
    {
        GameObject cam = GameObject.Find("Main Camera");
        videoPlayer = cam.AddComponent<UnityEngine.Video.VideoPlayer>();        // Obtain the location of the video clip.
        videoPlayer.url = Path.Combine(Application.streamingAssetsPath, "SampleVideo_1280x720_5mb.mp4");        // Restart from beginning when done.
        videoPlayer.isLooping = true;        // Do not show the video until the user needs it.
        videoPlayer.Pause();        status = "Press to play";
    }    void OnGUI()
    {
        GUIStyle buttonWidth = new GUIStyle(GUI.skin.GetStyle("button"));
        buttonWidth.fontSize = 18 * (Screen.width / 800);        if (GUI.Button(new Rect(Screen.width / 16, Screen.height / 16, Screen.width / 3, Screen.height / 8), status, buttonWidth))
        {
            if (videoPlayer.isPlaying)
            {
                videoPlayer.Pause();
                status = "Press to play";
            }
            else
            {
                videoPlayer.Play();
                status = "Press to pause";
            }
        }
    }
}
```

The following code example demonstrates how to access a file in the `StreamingAssets` folder on Android (and similarly WebGL) platforms. On both Android and WebGL, treat `Application.streamingAssetsPath` as a URL and use UnityWebRequest (not synchronous filesystem APIs such as `System.IO.File`) to read StreamingAssets.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Threading.Tasks;public class LoadStreamingAsset : MonoBehaviour
{
    async void Start()
    {
        string filePath = System.IO.Path.Combine(Application.streamingAssetsPath, "filetoload.txt");        UnityWebRequest request = UnityWebRequest.Get(filePath);
        UnityWebRequestAsyncOperation operation = request.SendWebRequest();        while (!operation.isDone)
        {
            await Task.Yield();
        }        if (request.result == UnityWebRequest.Result.Success)
        {
            Debug.Log(request.downloadHandler.text);
        }
        else
        {
            Debug.LogError("Cannot load file at " + filePath);
        }
    }
}
```
