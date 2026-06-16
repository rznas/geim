<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug-unityLogger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get default debug logger.

Logs `message` to the Unity Console using default logger.

Additional resources: ILogger, ILogHandler.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";    void MyGameMethod()
    {
        logger.Log(kTAG, "Hello");        Debug.unityLogger.Log(kTAG, "World");
    }
}
```
