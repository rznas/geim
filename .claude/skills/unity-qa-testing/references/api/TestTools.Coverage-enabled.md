<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if code coverage is enabled; otherwise, returns false.

### Description

Enables or disables code coverage. Note that Code Coverage can affect the performance.

```csharp
// Create a new C# script called CodeCoverageMenuItem and place it under the Editor folder.// This class creates a toggle menu item under Code Coverage > Enable Code Coverage.
// Use it to enable/disable Code Coverage.using UnityEditor;
using UnityEngine.TestTools;class CodeCoverageMenuItem
{
    const string EnableCodeCoverageItemName = "Code Coverage/Enable Code Coverage";    [MenuItem(EnableCodeCoverageItemName, false)]
    static void EnableCodeCoverage()
    {
        Coverage.enabled = !Coverage.enabled;
    }    [MenuItem(EnableCodeCoverageItemName, true)]
    static bool EnableCodeCoverageValidate()
    {
        Menu.SetChecked(EnableCodeCoverageItemName, Coverage.enabled);
        return true;
    }
}
```
