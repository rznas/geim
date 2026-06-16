<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger-filterLogType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

To selective enable debug log message.

By settings filterLogType to

 LogType.Log (default setting) will display all log messages.

 LogType.Warning will display Warning, Assert, Error and Exception log messages.

 LogType.Assert will display Assert, Error and Exception log messages.

 LogType.Error will display Error and Exception log messages.

 LogType.Exception will display Exception log messages.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";    void Start()
    {
        if (Debug.isDebugBuild)
            logger.filterLogType = LogType.Log;
        else
            logger.filterLogType = LogType.Warning;        logger.Log(kTAG, "This log will be displayed only in debug build");
        logger.LogError(kTAG, "This log will be displayed in debug and release build");
    }
}
```
