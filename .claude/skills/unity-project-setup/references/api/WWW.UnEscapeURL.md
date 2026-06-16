<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW.UnEscapeURL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | A string containing escaped characters. |
| e | The text encoding to use. |

### Description

Converts URL-friendly escape sequences back to normal text.

Certain text characters have special meanings when present in URLs. If you need to include those characters in URL parameters then you must represent them with escape sequences. This function takes a string containing these escape sequences and converts them back to normal text.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Plain name is "Fish & Chips".
        var plainName = WWW.UnEscapeURL("Fish+%26+Chips");
    }
}
```

Additional resources: EscapeURL.
