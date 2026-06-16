<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Logger-logEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

To runtime toggle debug logging [ON/OFF].

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private static ILogger logger = Debug.unityLogger;
    private static string kTAG = "MyGameTag";    void Start()
    {
        logger.logEnabled = Debug.isDebugBuild;        logger.Log(kTAG, "This log will be displayed only in debug build");
    }
}
```
