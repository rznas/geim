<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWWForm-data.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Read Only) The raw data to pass as the POST request body when sending the form.

Usually, you just pass the WWWForm object directly to the WWW constructor, but you will need this variable if you want to change the request headers sent to the web server.

Additional resources: headers variable.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;public class ExampleClass : MonoBehaviour
{
    IEnumerator Start()
    {
        WWWForm form = new WWWForm();
        form.AddField( "name", "value" );
        Dictionary<string, string> headers = form.headers;
        byte[] rawData = form.data;
        string url = "www.myurl.com";        // Add a custom header to the request.
        // In this case a basic authentication to access a password protected resource.
        headers["Authorization"] = "Basic " + System.Convert.ToBase64String(
            System.Text.Encoding.ASCII.GetBytes("username:password"));        // Post a request to an URL with our custom headers
        using (WWW www = new WWW(url, rawData, headers))
        {
            yield return www;
            //.. process results from WWW request here...
        }
    }
}
```
