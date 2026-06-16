<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains properties to modify Android Gradle specific values.

```csharp
using UnityEngine; 
using UnityEditor;
using UnityEditor.Android;public class AndroidGradleSettingsSample
{
    [MenuItem("Tools/Set Android Gradle settings")]
    public static void SetAndroidGradleSettings()
    {
        // Retrieve the current version of the Android Gradle Plugin (AGP)
        string currentVersion = AndroidExternalToolsSettings.Gradle.androidGradlePluginVersion;        // Log the currently configured version
        Debug.Log($"Current Android Gradle Plugin Version: {currentVersion}");        // Set a custom path for the Gradle installation.
        // Replace this with the actual path.        AndroidExternalToolsSettings.Gradle.path = "/path/to/your/gradle";
        Debug.Log($"Gradle Path set to: {AndroidExternalToolsSettings.Gradle.path}");
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| androidGradlePluginVersion | Version of the Android Gradle Plugin (AGP) used for building Android applications. |
| path | Path to the Gradle used for building Android applications. |
| stopDaemonsOnExit | Stops Gradle daemons when the Unity Editor exits. |
| userHomePath | Path to the Gradle User Home directory. |
| version | Version of Gradle used for building Android applications. |
