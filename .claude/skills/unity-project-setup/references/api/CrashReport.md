<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CrashReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Holds data for a single application crash event and provides access to all gathered crash reports.

If compiled with appropriate settings, Unity will try to gather useful information, like location and thread stack traces, when your application crashes. Upon the next application start, if the data gathering was successful, all crash information will be accessible using this API.

To enable crash report generation, in iOS player settings set "Script Call Optimization" option to "Fast but no Exceptions". After you build your Xcode project in Unity, open it and edit trampoline file: Classes/CrashReporter.h. Change ENABLE_CUSTOM_CRASH_REPORTER define from 0 to 1. Note that the iOS Player Settings has a Crash Reporting setting with an "Enable CrashReport API".

Note: this API currently is available only for iOS targets.

Additional resources: CrashReport.reports.

```csharp
using UnityEngine;
// This example shows a list of crash reports (if available),
// and allows you to output crash data to console, or
// delete them.
public class Crashes : MonoBehaviour
{
    void OnGUI()
    {
        var reports = CrashReport.reports;
        GUILayout.Label("Crash reports:");
        foreach (var r in reports)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Label("Crash: " + r.time);
            if (GUILayout.Button("Log"))
            {
                Debug.Log(r.text);
            }
            if (GUILayout.Button("Remove"))
            {
                r.Remove();
            }
            GUILayout.EndHorizontal();
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| lastReport | Returns last crash report, or null if no reports are available. |
| reports | Returns all currently available reports in a new array. |

### Properties

| Property | Description |
| --- | --- |
| text | Crash report data as formatted text. |
| time | Time, when the crash occured. |

### Public Methods

| Method | Description |
| --- | --- |
| Remove | Remove report from available reports list. |

### Static Methods

| Method | Description |
| --- | --- |
| RemoveAll | Remove all reports from available reports list. |
