<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-isBatchMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true when Unity is launched with the **-batchmode** flag from the command line (Read Only).

In batch mode, Unity runs from the command line without user interaction, typically used for automation (builds, tests, CI). For details, refer to EditorCommandLineArguments.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        if (Application.isBatchMode)
        {
            Debug.Log("In BatchMode");
        }
    }
}
```
