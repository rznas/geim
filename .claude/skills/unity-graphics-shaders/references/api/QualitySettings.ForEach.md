<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.ForEach.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The callback to execute for each level. |

### Description

Executes the given Action for each Quality Level configured in QualitySettings.

This method iterates through the configured quality levels and invokes the callback for every one. When this method returns, the original quality level is restored.

The following example adds a helper menu item that sets the Vsync Count setting on every quality level to "Don't Sync".

```csharp
using UnityEngine;
using UnityEditor;public class ForEachQualityLevelExample
{
    [MenuItem("Tools/Disable Vsync for All Quality Levels")]
    static void DisableVsync()
    {
        QualitySettings.ForEach(() =>
        {
            QualitySettings.vSyncCount = 0;
        });
    }
}
```
