<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-processorType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Processor name (Read Only).

Will return SystemInfo.unsupportedIdentifier on platforms which don't support this property.

```csharp
using UnityEngine;
using System;
using System.Globalization;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints using the following format - "Intel(R) Core(TM)2 Quad CPU Q6600 @ 2.40GHz"
        print(SystemInfo.processorType);        // Print out the architecture of the running process.
        // We can use the Environment property Is64BitProcess along with SystemInfo.processorType to figure it out.
        // Do a case insensitive string check.
        if (CultureInfo.InvariantCulture.CompareInfo.IndexOf(SystemInfo.processorType, "ARM", CompareOptions.IgnoreCase) >= 0)
        {
            if (Environment.Is64BitProcess)
                Debug.Log("ARM64");
            else
                Debug.Log("ARM");
        }
        else
        {
            // Must be in the x86 family.
            if (Environment.Is64BitProcess)
                Debug.Log("x86_64");
            else
                Debug.Log("x86");
        }
    }
}
```

Additional resources: SystemInfo.processorCount, SystemInfo.processorFrequency. On Android prior to 2019.3 this property would return the process architecture rather than the CPU name. To determine the architecture of the running process see the example code.
