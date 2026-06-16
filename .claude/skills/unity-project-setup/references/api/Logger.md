<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initializes a new instance of the Logger.

Create a new instance or use default Debug.unityLogger. Additional resources: ILogger, ILogHandler.

```csharp
using UnityEngine;
using System.Collections;
using System.IO;
using System;public class MyLogHandler : ILogHandler
{
    public void LogFormat(LogType logType, UnityEngine.Object context, string format, params object[] args)
    {
        Debug.unityLogger.logHandler.LogFormat(logType, context, format, args);
    }    public void LogException(Exception exception, UnityEngine.Object context)
    {
        Debug.unityLogger.LogException(exception, context);
    }
}public class MyGameClass : MonoBehaviour
{
    private static string kTAG = "MyGameTag";
    private Logger myLogger;    void Start()
    {
        myLogger = new Logger(new MyLogHandler());        myLogger.Log(kTAG, "MyGameClass Start.");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| filterLogType | To selective enable debug log message. |
| logEnabled | To runtime toggle debug logging [ON/OFF]. |
| logHandler | Set Logger.ILogHandler. |

### Constructors

| Constructor | Description |
| --- | --- |
| Logger | Create a custom Logger. |

### Public Methods

| Method | Description |
| --- | --- |
| IsLogTypeAllowed | Check logging is enabled based on the LogType. |
| Log | Logs message to the Unity Console using default logger. |
| LogError | A variant of Logger.Log that logs an error message. |
| LogException | A variant of Logger.Log that logs an exception message. |
| LogFormat | Logs a formatted message. |
| LogWarning | A variant of Logger.Log that logs an warning message. |
