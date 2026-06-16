<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.PostWwwForm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The target URI to which form data will be transmitted. |
| form | An HTML form to send. |

### Returns

**UnityWebRequest** A UnityWebRequest configured to send form data to `uri` via `POST`.

### Description

Creates a UnityWebRequest configured to send form data to a server via HTTP `POST`.

This method creates a UnityWebRequest, sets the `uri` and sets the method to `POST`. The `Content-Type` header will be set to `application/x-www-form-urlencoded` by default.

This method attaches a DownloadHandlerBuffer to the UnityWebRequest. This is for convenience, as we anticipate most users will use the DownloadHandler to check replies from the server, particularly in the case of REST APIs.

The string in the `form` parameter is expected to be a preformatted HTML form. It will be escaped and sent as UTF-8 string.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyBehavior : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(Upload());
    }    IEnumerator Upload()
    {
        using (UnityWebRequest www = UnityWebRequest.PostWwwForm("https://www.my-server.com/myapi", "field1=1&field2=value2"))
        {
            yield return www.SendWebRequest();            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError(www.error);
            }
            else
            {
                Debug.Log("Form upload complete!");
            }
        }
    }
}
```
