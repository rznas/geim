<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| logHandler | Pass in default log handler or custom log handler. |

### Description

Create a custom Logger.

Additional resources: ILogHandler, Debug.unityLogger.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static string kTAG = "MyGameTag";
    private Logger myLogger;    void Start()
    {
        myLogger = new Logger(Debug.unityLogger.logHandler);        myLogger.Log(kTAG, "MyGameClass Start.");
    }
}
```
