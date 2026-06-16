<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-responseHeaders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dictionary of headers returned by the request.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;public class ExampleClass : MonoBehaviour
{
    public string url = "https://unity3d.com";
    IEnumerator Start()
    {
        using (WWW www = new WWW(url))
        {
            yield return www;            if (www.responseHeaders.Count > 0)
            {
                foreach (KeyValuePair<string, string> entry in www.responseHeaders)
                {
                    Debug.Log(entry.Value + "=" + entry.Key);
                }
            }
        }
    }
}
```

Note when using these code examples you will want to set the WWW Security Emulation Host URL to "https://unity3d.com" in Editor Settings. Failure to do this may give you security exceptions.
