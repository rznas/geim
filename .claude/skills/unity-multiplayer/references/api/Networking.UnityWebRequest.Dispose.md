<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Signals that this UnityWebRequest is no longer being used, and should clean up any resources it is using.

You must call Dispose once you have finished using a UnityWebRequest object, regardless of whether the request succeeded or failed.

For safety, it is usually a best practice to employ the [using statement](https://msdn.microsoft.com/en-us/library/yh598w02.aspx) to ensure that a [UnityWebRequest] is properly cleaned up in case of uncaught exceptions.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyExampleBehaviour : MonoBehaviour
{
    public IEnumerator Start()
    {
        using (UnityWebRequest request = UnityWebRequest.Get("https://my-website.com"))
        {
            yield return request.SendWebRequest();
            Debug.Log("Server responded: " + request.downloadHandler.text);
        }
    }
}
```
