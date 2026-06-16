<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-error.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns an error message if there was an error during the download (Read Only).

If there was no error, `error` will return `null` or an empty string (this is because some platforms don't allow nulls for string values). We recommend that you use String.IsNullOrEmpty to check for the presence of an error so that both cases are covered.

If the object has not finished downloading the data, it will block until the download has finished. Use isDone or `yield` to see if the data is available.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Make a request with an invalid url
    public string url = "invalid_url";
    IEnumerator Start()
    {
        using (WWW www = new WWW(url))
        {
            yield return www;
            if (!string.IsNullOrEmpty(www.error))
                Debug.Log(www.error);
        }
    }
}
```

In the example the URL is not valid so the error message will be "Couldn't resolve host".
