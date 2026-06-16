<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.ResetAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets all coverage data.

```csharp
using UnityEngine;
using UnityEngine.TestTools;public class CoverageExample : MonoBehaviour
{
    void Start()
    {
        // Reset all coverage data that has been captured up to this point.
        Coverage.ResetAll();
    }
}
```
