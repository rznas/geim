<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger.Log.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| logType | The type of the log message. |
| tag | Used to identify the source of a log message. It usually identifies the class where the log call occurs. |
| message | String or object to be converted to string representation for display. |
| context | Object to which the message applies. |

### Description

Logs `message` to the Unity Console using default logger.

Additional resources: ILogger, ILogHandler.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";    void MyGameMethod()
    {
        logger.Log(kTAG, "Hello");        Debug.unityLogger.Log(kTAG, "World");        logger.Log("Hello Logger");
    }
}
```
