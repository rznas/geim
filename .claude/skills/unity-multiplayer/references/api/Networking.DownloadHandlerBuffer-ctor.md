<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerBuffer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Default constructor.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    IEnumerator Start()
    {
        using (var uwr = new UnityWebRequest("https://unity3d.com/", UnityWebRequest.kHttpVerbGET))
        {
            uwr.downloadHandler = new DownloadHandlerBuffer();
            yield return uwr.SendWebRequest();
            Debug.Log(uwr.downloadHandler.text);
        }
    }
}
```
