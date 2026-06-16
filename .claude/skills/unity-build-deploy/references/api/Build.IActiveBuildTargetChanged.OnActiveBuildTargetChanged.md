<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IActiveBuildTargetChanged.OnActiveBuildTargetChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| previousTarget | The build target before the change. |
| newTarget | The new active build target. |

### Description

This function is called automatically when the active build platform has changed.

Additional resources: SwitchActiveBuildTarget.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ActiveBuildTargetListener : IActiveBuildTargetChanged
{
    public int callbackOrder { get { return 0; } }
    public void OnActiveBuildTargetChanged(BuildTarget previousTarget, BuildTarget newTarget)
    {
        Debug.Log("Switched build target to " + newTarget);
    }
}
```
