<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-operatingSystemFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the operating system family the game is running on (Read Only).

This API is used by UI code to distinguish between desktop OS families with different UI conventions. For all non-desktop platforms it will currently return OperatingSystemFamily.Other.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        if (SystemInfo.operatingSystemFamily == OperatingSystemFamily.MacOSX)
            Debug.Log("Do something special here");
    }
}
```

Additional resources: OperatingSystemFamily enum, SystemInfo class.
