<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerFile-removeFileOnAbort.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the created file be removed if download is aborted (manually or due to an error). Default: false.

```csharp
using System.Collections;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;public class DownloadHandlerFileSample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(Download());
    }    IEnumerator Download()
    {
        using var uwr = new UnityWebRequest("https://unity3d.com/");
        uwr.method = UnityWebRequest.kHttpVerbGET;
        var resultFile = Path.Combine(Application.persistentDataPath, "result.txt");
        var dh = new DownloadHandlerFile(resultFile);
        dh.removeFileOnAbort = true;
        uwr.downloadHandler = dh;
        yield return uwr.SendWebRequest();
        if (uwr.result != UnityWebRequest.Result.Success)
            Debug.LogError(uwr.error);
        else
        {
            Debug.Log("Download saved to: " + resultFile);
        }
    }
}
```
