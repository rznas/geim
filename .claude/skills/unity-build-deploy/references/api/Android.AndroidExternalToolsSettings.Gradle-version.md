<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle-version.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Version of Gradle used for building Android applications.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class GradleVersionManager
{
    [MenuItem("Build/Get Gradle Version")]
    public static void GetGradleVersion()
    {
        // Retrieve the current version of Gradle used by Unity
        string currentVersion = AndroidExternalToolsSettings.Gradle.version;        // Log the current Gradle version
        Debug.Log($"Current Gradle Version: {currentVersion}");
    }
}
```
