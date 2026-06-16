<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle-userHomePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to the Gradle User Home directory.

If no path is specified, the Gradle User Home directory is located in the `.gradle` folder of your system's home directory. If your username contains non-ASCII characters that Gradle might not process correctly, specify a custom location for your Gradle User Home directory instead of changing your username.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class GradleUserHomeManager
{
    [MenuItem("Build/Set Custom Gradle User Home Path")]
    public static void SetGradleUserHomePath()
    {
        // Example custom path to Gradle User Home directory
        string customUserHomePath = "/custom/gradle/home";        AndroidExternalToolsSettings.Gradle.userHomePath = customUserHomePath;
        Debug.Log($"Gradle User Home Path set to: {AndroidExternalToolsSettings.Gradle.userHomePath}");
    }    [MenuItem("Build/Reset Gradle User Home Path To Default")]
    public static void ResetGradleUserHomePath()
    {
        // Reset Gradle User Home path to your system's home directory.
        AndroidExternalToolsSettings.Gradle.userHomePath = string.Empty;
        Debug.Log("Gradle User Home Path reset to your system's home directory.");
    }    [MenuItem("Build/Get Current Gradle User Home Path")]
    public static void GetGradleUserHomePath()
    {
        // Retrieve the currently configured Gradle User Home Path
        string currentUserHomePath = AndroidExternalToolsSettings.Gradle.userHomePath;
        
        Debug.Log($"Current Gradle User Home Path: {currentUserHomePath}");    }
}
```
