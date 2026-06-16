<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.UnEscapeURL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | A string containing escaped characters. |
| e | The text encoding to use. |

### Description

Converts URL-friendly escape sequences back to normal text.

Certain text characters have special meanings when present in URLs. If you need to include those characters in URL parameters then you must represent them with escape sequences. This function takes a string containing these escape sequences and converts them back to normal text. See Also: UnityWebRequest.EscapeURL.

```csharp
using UnityEngine;
using UnityEngine.Networking;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        string plainName = UnityWebRequest.UnEscapeURL("Fish+%26+Chips");
    }
}
```
