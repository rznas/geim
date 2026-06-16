<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-timeout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of seconds after which UnityWebRequest attempts to abort the request if no response is received.

The default value is `0` which means no timeout is applied and UnityWebRequest will wait until the response is received.

When the response takes longer than the value specified in `timeout`, UnityWebRequest.error returns `Request timeout` message.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Networking;// Ask the website to deliver an image that is very large.
// Set the download to take more than 60 seconds. This causes
// the "request timeout" error message.public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(GetText());
    }    IEnumerator GetText()
    {
        using UnityWebRequest www = UnityWebRequest.Get("https://my-website.com/verylargeimage.jpg");        // Set the timeout to 60 seconds.
        // Abort the request if the image doesn't download within the specified timeout.
        www.timeout = 60;
        yield return www.SendWebRequest();        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.LogError(www.error);
        }
        else
        {
            Debug.Log("image arrived");
        }
    }
}
```
