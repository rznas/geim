<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle-androidGradlePluginVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Version of the Android Gradle Plugin (AGP) used for building Android applications.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class GradlePluginVersionManager
{
    [MenuItem("Build/Get Android Gradle Plugin Version")]
    public static void GetAndroidGradlePluginVersion()
    {
        // Retrieve the current version of the Android Gradle Plugin (AGP)
        string currentVersion = AndroidExternalToolsSettings.Gradle.androidGradlePluginVersion;        // Log the currently configured version
        Debug.Log($"Current Android Gradle Plugin Version: {currentVersion}");
    }
}
```
