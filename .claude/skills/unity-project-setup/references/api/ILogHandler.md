<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ILogHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for custom log handler implementation.

ILogHandler interface to ease unit-testing and mocking of loggers.

```csharp
using UnityEngine;
using System.Collections;
using System.IO;
using System;public class MyFileLogHandler : ILogHandler
{
    private FileStream m_FileStream;
    private StreamWriter m_StreamWriter;
    private ILogHandler m_DefaultLogHandler = Debug.unityLogger.logHandler;    public MyFileLogHandler()
    {
        string filePath = Application.persistentDataPath + "/MyLogs.txt";        m_FileStream = new FileStream(filePath, FileMode.OpenOrCreate, FileAccess.ReadWrite);
        m_StreamWriter = new StreamWriter(m_FileStream);        // Replace the default debug log handler
        Debug.unityLogger.logHandler = this;
    }    public void LogFormat(LogType logType, UnityEngine.Object context, string format, params object[] args)
    {
        m_StreamWriter.WriteLine(String.Format(format, args));
        m_StreamWriter.Flush();
        m_DefaultLogHandler.LogFormat(logType, context, format, args);
    }    public void LogException(Exception exception, UnityEngine.Object context)
    {
        m_DefaultLogHandler.LogException(exception, context);
    }
}public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";
    private MyFileLogHandler myFileLogHandler;    void Start()
    {
        myFileLogHandler = new MyFileLogHandler();        logger.Log(kTAG, "MyGameClass Start.");
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| LogException | A variant of ILogHandler.LogFormat that logs an exception message. |
| LogFormat | Logs a formatted message. |
