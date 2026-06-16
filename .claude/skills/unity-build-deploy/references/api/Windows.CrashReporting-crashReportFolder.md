<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.CrashReporting-crashReportFolder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the path to the crash report folder on Windows.

Crash reports are stored in the following location:

`%TMP%\CompanyName\ProductName\Crashes`

Crash reports are assigned a unique path on startup allowing you to determine in advance where a crash report will be stored if one occurs.

Additional resources: PlayerSettings.companyName, PlayerSettings.productName.

```csharp
// Required namespaces
using System.IO;                // For working with file system operations, such as directories and files.using UnityEngine;public class CrashReportExample : MonoBehaviour
{
    void Start()
    {
        // Get the folder path where crash reports are stored
        string crashReportPath = UnityEngine.Windows.CrashReporting.crashReportFolder;        // Log the path to the console
        Debug.Log("Crash reports are stored in: " + crashReportPath);        // Check if the folder exists, and if it does, list crash reports
        if (Directory.Exists(crashReportPath))
        {
            string[] crashReports = Directory.GetFiles(crashReportPath);
            foreach (string report in crashReports)
            {
                Debug.Log("Found crash report: " + report);
            }
        }
        else
        {
            Debug.Log("Crash report folder does not exist.");
        }
    }
}
```
