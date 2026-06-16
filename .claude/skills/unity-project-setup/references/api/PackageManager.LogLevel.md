<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.LogLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for different levels of log information supported by the Package Manager.

Set the Package Manager log level to get an appropriate level of detail in the log file. You can temporarily set a lower level, which generates more log information. This technique can help you understand the Package Manager's operations if something unexpected happens. When you complete your investigation, the recommended best practice is to raise the log level to prevent bloating the Package Manager log file.

```csharp
using System;
using UnityEditor.PackageManager;
using UnityEngine;[ExecuteInEditMode]
public class PackageLogExample: MonoBehaviour
{
    void Start()
    {
        Debug.Log($"Current log level: {Client.LogLevel}");
       
        // Set to Debug to see extra debug level operation logs
        Client.LogLevel = LogLevel.Debug;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Error | Only unexpected errors and failures are logged. |
| Warn | Abnormal situations that may result in problems are reported, in addition to anything from the LogLevel.Error level. |
| Info | High-level informational messages are reported, in addition to anything from the LogLevel.Warn level. |
| Verbose | Detailed informational messages are reported, in addition to anything from the LogLevel.Info level. |
| Debug | Debugging messages are reported, in addition to anything from the LogLevel.Verbose level. |
| Silly | Extremely detailed messages are reported, in addition to anything from the LogLevel.Debug level. |
