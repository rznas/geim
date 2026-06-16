<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings.SwitchActiveBuildTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | Target build platform. |
| targetGroup | Build target group. |
| namedBuildTarget | Target named build platform. |

### Returns

**bool** True if the build target was successfully switched, false otherwise (for example, if license checks fail, files are missing, or if the user has cancelled the operation via the UI).

### Description

Select a new build target to be active.

When changing the active build target, this function reimports Assets that are affected by the current platform settings, and then returns true if the operation completed successfully. All script files are compiled on the next editor update. To have scripts compile before the Assets are reimported, refer to SwitchActiveBuildTargetAsync.

If the given target is a standalone target, calling SwitchActiveBuildTarget will also affect EditorUserBuildSettings.selectedStandaloneTarget.

**Note**: This method isn't available when running the Editor in batch mode. Changing the build target requires recompiling script code for the given target, which can't be done while script code is executing. This isn't a problem in the Editor, as the operation is deferred to the next Editor update. However, in batch mode the Editor will stop after executing the designated script code, so deferring the operation isn't possible. To set the build target to use in batch mode, use the buildtarget command-line argument.

```csharp
using UnityEditor;public class SwitchPlatformExample
{
    [MenuItem("Example/Switch Platform")]
    public static void PerformSwitch()
    {
        // Switch to Windows standalone build.
        EditorUserBuildSettings.SwitchActiveBuildTarget(BuildTargetGroup.Standalone, BuildTarget.StandaloneWindows);
    }
}
```
