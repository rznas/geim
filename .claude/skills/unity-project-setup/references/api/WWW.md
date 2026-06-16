<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Simple access to web pages.

Obsolete: WWW has been replaced with UnityWebRequest.

This is a small utility module for retrieving the contents of URLs.

You start a download in the background by calling `WWW(url)` which returns a new WWW object.

You can inspect the `isDone` property to see if the download has completed or yield the download object to automatically wait until it is (without blocking the rest of the game).

Use it if you want to get some data from a web server for integration with a game such as highscore lists or calling home for some reason. There is also functionality to create textures from images downloaded from the web and to stream & load new web player data files.

The WWW class can be used to send both GET and POST requests to the server. The WWW class will use GET by default and POST if you supply a postData parameter.

Additional resources: WWWForm for a way to build valid form data for the postData parameter.

**Note:** URLs passed to WWW class must be '%' escaped.

**Notes** **http://**, **https://** and **file://** protocols are supported on iPhone. **ftp://** protocol support is limited to anonymous downloads only. Other protocols are not supported.

**Note:** When using file protocol on Windows and Windows Store Apps for accessing local files, you have to specify **file:///** (with three slashes).

```csharp
// Get the Unity logo as a texture from the Unity website
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string url = "https://unity3d.com/files/images/ogimg.jpg";
    IEnumerator Start()
    {
        using (WWW www = new WWW(url))
        {
            yield return www;
            Renderer renderer = GetComponent<Renderer>();
            renderer.material.mainTexture = www.texture;
        }
    }
}
```

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
