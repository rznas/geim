<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWWForm-headers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Read Only) Returns the correct request headers for posting the form using the WWW class.

This field only contains one header, /"Content-Type"/, which is set to the correct mime type for the form: "`application/x-www-form-urlencoded`" for normal forms and "`multipart/form-data`" for forms containing data added using AddBinaryData.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class Example : MonoBehaviour {    IEnumerator Start () {
        Dictionary<string, string> headers = new Dictionary<string,string>();
        headers.Add("header-name", "header content");
        WWW www = new WWW("https://example.com", null, headers);
        yield return www;
        Debug.Log (www.text);
    }}
```
