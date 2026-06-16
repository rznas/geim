<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger.LogError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | Used to identify the source of a log message. It usually identifies the class where the log call occurs. |
| message | String or object to be converted to string representation for display. |
| context | Object to which the message applies. |

### Description

A variant of Logger.Log that logs an error message.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";
    private Transform tr;    void MyGameMethod()
    {
        if (tr == null)
        {
            logger.LogError(kTAG, "memberVariable must be set to point to a Transform.", tr);            Debug.unityLogger.LogError(kTAG, "Failed! to set Transform",  tr);
        }
    }
}
```

Note that this pauses the editor when 'ErrorPause' is enabled.
