<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-logMessageReceivedThreaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is fired if a log message is received.

This event will be triggered regardless of whether the message comes in on the main thread or not. This means that the handler code has to be thread-safe. It may be invoked from different threads and may be invoked in parallel. Make sure to only access Unity APIs from your handlers that are allowed to be called from threads other than the main thread.

**Note:** It is not necessary to subscribe to both Application.logMessageReceived and `Application.logMessageReceivedThreaded`. The multi-threaded variant will also be called for messages on the main thread.

**Note:** `Application.logMessageReceivedThreaded` event is triggered even when you use a custom ILogHandler. This event triggers when any log message is processed by Unity's internal logging system, regardless of its origin or how it's being handled by a custom logger.

Additional resources: Application.logMessageReceived.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string output = "";
    public string stack = "";    void OnEnable()
    {
        Application.logMessageReceivedThreaded += HandleLog;
    }    void OnDisable()
    {
        Application.logMessageReceivedThreaded -= HandleLog;
    }    void HandleLog(string logString, string stackTrace, LogType type)
    {
        output = logString;
        stack = stackTrace;
    }
}
```
