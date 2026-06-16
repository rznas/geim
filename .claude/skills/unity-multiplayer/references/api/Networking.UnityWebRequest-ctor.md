<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The target URL with which this UnityWebRequest will communicate. Also accessible via the url property. |
| uri | The target URI to which form data will be transmitted. |
| method | HTTP GET, POST, etc. methods. |
| downloadHandler | Replies from the server. |
| uploadHandler | Upload data to the server. |

### Description

Creates a UnityWebRequest with the default options and no attached DownloadHandler or UploadHandler. Default method is `GET`.

The raw constructor is useful for use cases which require detailed custom configuration of a UnityWebRequest. Most use cases will require the attachment of a DownloadHandler, an UploadHandler or both in order to function propertly.

Additional resources: Get, GetTexture, GetAudioClip, GetAssetBundle, Head, Post, Put, Delete.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class SimpleGetRequest : MonoBehaviour
{
    private const string Url = "https://jsonplaceholder.typicode.com/todos/1";    void Start()
    {
        StartCoroutine(GetExample());
    }    private IEnumerator GetExample()
    {
        // Use the constructor: UnityWebRequest(string url, string method)
        // Method can be UnityWebRequest.kHttpVerbGET, "GET", "POST", etc.
        using (UnityWebRequest request = new UnityWebRequest(Url, UnityWebRequest.kHttpVerbGET))
        {
            // Attach a download handler to receive body data
            request.downloadHandler = new DownloadHandlerBuffer();            // Optionally set headers
            request.SetRequestHeader("Accept", "application/json");            // Send the request and wait for completion
            yield return request.SendWebRequest();            if (request.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError($"Request failed: {request.error}");
            }
            else
            {
                // Access the response body
                string json = request.downloadHandler.text;
                Debug.Log($"Response Code: {request.responseCode}");
                Debug.Log($"Body: {json}");
            }
        }
    }
}
```
