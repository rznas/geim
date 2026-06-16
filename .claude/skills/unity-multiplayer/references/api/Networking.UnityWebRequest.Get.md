<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Get.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI of the resource to retrieve via HTTP GET. |

### Returns

**UnityWebRequest** An object that retrieves data from the uri.

### Description

Create a UnityWebRequest for HTTP GET.

Use `UnityWebRequest.Get` to retrieve simple data (textual or binary) from a URI. While HTTP and HTTPS are common, other URI schemes are also supported, such as `file://`. Support for additional schemes is platform-dependent.

This method creates a `UnityWebRequest` and sets the target URL to the `uri` argument specified as a string or `Uri` object. It sets no other custom flags or headers.

By default, this method attaches a standard DownloadHandlerBuffer to the `UnityWebRequest`. This handler buffers the data received from the server and makes it available to your scripts when the request is complete. No UploadHandler is attached by default, but you can attach one manually.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;// UnityWebRequest.Get example// Access a website and use UnityWebRequest.Get to download a page.
// Also try to download a non-existing page. Display the error.public class Example : MonoBehaviour
{
    void Start()
    {
        // A correct website page.
        StartCoroutine(GetRequest("https://www.example.com"));        // A non-existing page.
        StartCoroutine(GetRequest("https://error.html"));
    }    IEnumerator GetRequest(string uri)
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Get(uri))
        {
            // Request and wait for the desired page.
            yield return webRequest.SendWebRequest();            string[] pages = uri.Split('/');
            int page = pages.Length - 1;            switch (webRequest.result)
            {
                case UnityWebRequest.Result.ConnectionError:
                case UnityWebRequest.Result.DataProcessingError:
                    Debug.LogError(pages[page] + ": Error: " + webRequest.error);
                    break;
                case UnityWebRequest.Result.ProtocolError:
                    Debug.LogError(pages[page] + ": HTTP Error: " + webRequest.error);
                    break;
                case UnityWebRequest.Result.Success:
                    Debug.Log(pages[page] + ":\nReceived: " + webRequest.downloadHandler.text);
                    break;
            }
        }
    }
}
```
