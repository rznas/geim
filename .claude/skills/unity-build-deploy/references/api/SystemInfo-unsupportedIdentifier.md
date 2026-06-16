<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-unsupportedIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value returned by SystemInfo string properties which are not supported on the current platform.

```csharp
using UnityEngine;
using System.Collections;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        if (SystemInfo.unsupportedIdentifier != SystemInfo.deviceUniqueIdentifier)
        {
            // use SystemInfo.deviceUniqueIdentifier
        }
    }
}
```
