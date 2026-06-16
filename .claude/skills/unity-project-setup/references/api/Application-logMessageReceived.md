<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-logMessageReceived.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is fired if a log message is received.

This event only ever triggers on the main thread. Use it if your handler requires accessing parts of the Unity API that are restricted to the main thread or if for other reasons your handler isn't thread-safe.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string output = "";
    public string stack = "";    void OnEnable()
    {
        Application.logMessageReceived += HandleLog;
    }    void OnDisable()
    {
        Application.logMessageReceived -= HandleLog;
    }    void HandleLog(string logString, string stackTrace, LogType type)
    {
        output = logString;
        stack = stackTrace;
    }
}
```

Additional resources: Application.logMessageReceived, LogType, Application.logMessageReceivedThreaded.
