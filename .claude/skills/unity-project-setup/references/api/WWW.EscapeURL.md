<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW.EscapeURL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | A string with characters to be escaped. |
| e | The text encoding to use. |

### Description

Escapes characters in a string to ensure they are URL-friendly.

Certain text characters have special meanings when present in URLs. If you need to include those characters in URL parameters then you must represent them with escape sequences. It is recommended that you use this function on any text supplied by a user before passing the text as a URL parameter. This will ensure that a malicious user can't manipulate the contents of the URL to attack the webserver.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Escaped name is "Fish+%26+Chips".
        var escName = WWW.EscapeURL("Fish & Chips");
    }
}
```

Additional resources: UnEscapeURL.
